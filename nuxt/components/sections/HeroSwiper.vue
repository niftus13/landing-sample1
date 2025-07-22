<template>
  <section class="hero" id="home">
    <!-- hero Section -->
    <SwiperWrapper
      :slides-per-view=1
      :space-between=20
      :pagination="null"
      :navigation="true"
      :loop="true"
      :autoplay="{ delay: 10000 }"
    >
      <SwiperSlide v-for="(img, i) in images" :key="i">
        <div
        class="hero-slide"
        :style="{
        backgroundImage: `url(${img})`,

        }">
        <div class="content-item ">
          <div class="container">
            <!-- <h5 class="hero-text">{{ innerTexts[i] }}</h5> -->
          </div>
        </div>

        </div>
      </SwiperSlide>

    </SwiperWrapper>
  </section>
</template>

<script setup>
import { SwiperSlide } from "swiper/vue";
import SwiperWrapper from "../ui/SwiperWrapper.vue";

const innerTexts = [
  '첫 번째 슬라이드',
  '두 번째 슬라이드',
  '세 번째 슬라이드'
]

const images = [
  "/images/main-slide1.gif",
  "/images/main-slide2.gif",
  "/images/main-slide3.gif",
];
</script>

<style scoped>
.hero{
  padding-top: 0;
}
.hero-slide {
  display: flex;
  align-items: center;
  justify-content: center;
  background-size: cover;
  background-position: center;
  min-width: 100%;
  height:100vh;
}
.hero-text {
  color: white;
  font-size: 2rem; /* 큰 화면을 위한 기본 글꼴 크기 */
  text-shadow: 0 2px 4px rgba(0,0,0,0.7);
  z-index: 1;
  text-align: center; /* 작은 화면에서 가독성을 높이기 위해 텍스트 중앙 정렬 */
  padding: 0 15px; /* 텍스트가 화면 가장자리에 붙지 않도록 패딩 추가 */
  box-sizing: border-box; /* 패딩을 요소의 총 너비와 높이에 포함 */
}
/* 태블릿 및 작은 데스크톱 (예: 최대 1024px) */
@media (max-width: 1024px) {
  .hero-text {
    font-size: 1.75rem;
  }
}

/* 모바일 장치 (예: 최대 768px) */
@media (max-width: 768px) {
  .hero-slide {
    height: 80vh; /* 모바일 장치에서 과도한 스크롤 방지를 위해 높이 조정 */
  }
  .hero-text {
    font-size: 1.5rem;
  }
}

/* 아주 작은 모바일 장치 (예: 최대 480px) */
@media (max-width: 480px) {
  .hero-slide {
    height: 70vh;
  }
  .hero-text {
    font-size: 1.2rem;
  }
}
</style>
