# --- 빌드 스테이지 ---
# Nuxt.js 애플리케이션을 빌드하기 위한 스테이지입니다.
FROM node:20-alpine AS builder

# 컨테이너 내부의 작업 디렉토리를 /app으로 설정합니다.
# 모든 파일 복사 및 빌드 작업은 이 디렉토리 내에서 이루어집니다.
WORKDIR /app

# pnpm 패키지 매니저를 설치합니다.
RUN npm install -g pnpm

# 의존성 설치를 위해 package.json과 pnpm-lock.yaml 파일을 먼저 복사합니다.

COPY ./nuxt/package.json ./
COPY ./nuxt/pnpm-lock.yaml ./

# pnpm을 사용하여 프로젝트 의존성을 설치합니다.
# --frozen-lockfile 플래그는 lock 파일에 지정된 정확한 버전만 설치하도록 강제하여 빌드의 일관성을 보장합니다.
RUN pnpm install --frozen-lockfile

# Nuxt.js 프로젝트의 나머지 모든 파일을 현재 작업 디렉토리(/app)로 복사합니다.
COPY ./nuxt ./

# Nuxt.js 애플리케이션을 프로덕션용으로 빌드합니다.
# 빌드 결과물은 /app/.output 디렉토리에 생성됩니다.
RUN pnpm build

# --- 프로덕션 스테이지 ---
# 최종 실행 가능한 이미지를 생성하기 위한 스테이지입니다.
# 빌드 스테이지에서 생성된 필요한 파일만 복사하여 이미지 크기를 최소화합니다.
FROM node:20-alpine AS runner

# 컨테이너 내부의 작업 디렉토리를 /app으로 설정합니다.
# 이는 docker-compose.yml의 working_dir: /app 설정과 일치합니다.
WORKDIR /app

# 보안 강화를 위해 비루트 사용자를 생성하고 사용합니다.
# 이 사용자는 애플리케이션을 실행하는 데 필요한 최소한의 권한만 가집니다.
RUN addgroup --system nuxtuser && adduser --system --ingroup nuxtuser nuxtuser
USER nuxtuser

# 빌드 스테이지에서 생성된 .output 디렉토리만 최종 이미지로 복사합니다.
# 이 디렉토리에는 Nuxt.js 애플리케이션의 서버 및 클라이언트 빌드 결과물이 포함됩니다.
# 복사 후 .output 디렉토리는 /app/.output 경로에 위치하게 됩니다.
COPY --from=builder /app/.output ./.output

# Nuxt 애플리케이션이 수신 대기할 포트를 노출합니다.
# docker-compose.yml의 포트 매핑 (7011:3000)과 일치합니다.
EXPOSE 3000

# 컨테이너가 시작될 때 실행될 명령어입니다.
# Node.js를 사용하여 빌드된 Nuxt.js 서버 엔트리 포인트(index.mjs)를 실행합니다.
# working_dir이 /app이므로, .output/server/index.mjs는 /app/.output/server/index.mjs로 해석됩니다.
CMD ["node", ".output/server/index.mjs"]
