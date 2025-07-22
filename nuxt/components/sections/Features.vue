<template>
  <section class="features-section section" id="features">
    
    <div class="features-container">
      <div class="section-header">
        <h2>
          <span>
            왜<br>
            <strong>FirstPage</strong><br>인가요?
          </span>
        </h2>        
      </div>
      <div class="features-box">
      <div
        class="feature-item"
        v-for="(feature, index) in features"
        :key="index"
      >
        <!-- 이미지 먼저 올지 텍스트 먼저 올지 순서 제어 -->
        <div v-if="index % 2 === 0" class="feature-img">
          <img :src="feature.img" :alt="feature.alt" />
        </div>

        <div class="feature-text">
          <i>{{ feature.num }}</i>
          <h3 class="feature-title">{{ feature.title }}</h3>
          <p class="feature-description">{{ feature.description }}</p>
        </div>

        <div v-if="index % 2 === 1" class="feature-img" >
          <img :src="feature.img" :alt="feature.alt" />
        </div>
      </div>
    </div>
  </div>

  </section>
</template>

<script setup>
const features = [
  {
    num: '01',
    title: '반응형 웹 디자인',
    description: '모든 기기에서 완벽하게 보이는 반응형 웹사이트를 제작합니다. PC, 태블릿, 모바일 어디에서든 최적화된 사용자 경험을 제공합니다.',
    img: '/images/responsive.png',
    alt: '이미지 1',
  },
  {
    num: '02',
    title: '쉬운 유지보수',
    description: '전문 지식 없이도 쉽게 관리할 수 있는 시스템으로 제작하여, 사이트 운영의 부담을 덜어드립니다.',
    img: '/images/card1.jpg',
    alt: '이미지 2',
  },
  {
    num: '03',
    title: '검색 엔진 최적화 (SEO)',
    description: '구글, 네이버 등 주요 검색 엔진에 노출이 잘 되도록 최적화하여, 잠재 고객이 쉽게 웹사이트를 찾을 수 있도록 돕습니다.',
    img: '/images/seo.jpg',
    alt: '이미지 3',
  },
  {
    num: '04',
    title: '전문가 상담 및 지원',
    description: '프로젝트 시작부터 완료 후까지, 언제든지 전문가의 친절한 상담과 빠른 기술 지원을 받을 수 있습니다.',
    img: '/images/card2.jpg',
    alt: '이미지 4',
  },
]
</script>

<style scoped>
.features {
  background: #fff;
}
.features-container {
  display: flex;
}
.features-container .section-header {
  width:400px;
}
.features-container .section-header > h2 {
    position: sticky;
    left: 0;
    top: 150px;
    margin: 110px 0 300px;
    margin-right: 50px;
    font-size: 50px;
    font-weight: bold;
    color: #222;
    line-height: 1.2em;
    word-break: keep-all;
}
.features-container .features-box {
    position: relative;
    width: calc(100% - 400px);
    border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    box-sizing: border-box;
}
.features-box .feature-item {
  display: flex;
}

.features-box > div > div {
    width: 50%;
    padding: 60px;
    border-bottom: 1px solid #ddd;
  border-left: 1px solid #ddd;
    border-right: 1px solid #ddd;
    box-sizing: border-box;
}
.feature-img img{
  max-width:100%;
}
.feature-text {
  display: flex;
  flex-direction: column;
  flex-grow: 1; /* 남은 공간 차지 */
  align-items: center;
}

.feature-title {
  font-size: 2rem;
  font-weight: 700;
  color: var(--text-dark);
  margin-bottom: 2rem;
}

.feature-description {
  font-size: 1.3rem;
  color: var(--text-medium);
  line-height: 1.6;
}
.feature-text i {
    display: block;
    margin: 0 0 50px;
    font-size: 30px;
    font-weight: 600;
    color: #ddd;
    line-height: 1em;
    font-style: normal;
}
strong {
  color: var(--primary-color);
}

@media (max-width: 767px){

  .features-container {
    flex-direction: column; /* 세로로 쌓이도록 변경 */
    align-items: center; /* 중앙 정렬 */
  }
  .features-container .section-header h2 {
    position: relative;
    top:auto;
    width: 100%;
    margin: 100px auto;
  }
  .features-box .feature-item {
    display:flex;
    flex-direction: column;
  }

  .features-container .features-box {
    width:100%;
  }
  .features-box > div > div {
    width:100%;
  }
/* 짝수번째는 순서를 바꾼다 */
.feature-item:nth-child(odd) .feature-img {
  order: 2;
}

.feature-item:nth-child(odd) .feature-text {
  order: 1;
}


}



</style>
