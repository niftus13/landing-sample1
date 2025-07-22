// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  ssr: true,

  devtools: { enabled: true },
  modules: ["@nuxt/fonts", "@nuxt/icon", "@nuxt/image", "@nuxt/ui"],
  

  css: [
  '@/assets/css/main.css'
  ],

  image: {
    provider: "ipx",
  },
  // 컴포넌트 단위로 필요한 부분만 클라이언트에서 hydrate(JS 실행) false
  experimental: {
    componentIslands: false,
  },

  // hotload ✅ Docker 환경에서 필수
  watchers: {
    chokidar: {
      usePolling: true,
      interval: 100,
    },
  },
});
