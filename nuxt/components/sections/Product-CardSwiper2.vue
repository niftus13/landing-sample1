<template>
  <section class="product-section" id="product">
    <div class="section-header product-header">
      <h2>PRODUCT</h2>
      <p>저희가 제공하는 다양한 웹사이트 제작 솔루션을 살펴보세요.</p>
    </div>

    <div class="swiper-container product-swiper">
      <SwiperWrapper
        :slides-per-view="1"
        :space-between="20"
        :loop="true"
        :autoplay="{ delay: 3000, disableOnInteraction: false }"
        :breakpoints="{
          640: {
            slidesPerView: 2,
            spaceBetween: 30,
          },
          1024: {
            slidesPerView: 3,
            spaceBetween: 40,
          },
          1280: {
            slidesPerView: 3,
            spaceBetween: 40,
          },
        }"
      >
        <SwiperSlide v-for="(card, index) in cards" :key="index">
          <div class="card">
            <div class="card-image">
              <img :src="card.image" :alt="card.title" loading="lazy">
            </div>
            <h3 class="card-title">{{ card.title }}</h3>
            <p class="card-description">{{ card.description }}</p>
          </div>
        </SwiperSlide>
      </SwiperWrapper>
    </div>
  </section>
</template>

<script setup>
import { SwiperSlide } from "swiper/vue";
import SwiperWrapper from "../ui/SwiperWrapper.vue";

// 카드 데이터
const cards = [
  { title: '랜딩 페이지', description: '브랜드 이미지에 맞춘 1페이지 구성의 랜딩 페이지', image: '/images/card1.jpg' },
  { title: '기업형 홈페이지', description: '5장으로 구성된 블로그형 기업형 홈페이지', image: '/images/card2.jpg' },
  { title: '쇼핑몰', description: '상품결제, 회원관리 등 복합 기능을 포함한 쇼핑몰', image: '/images/card3.jpg' },
  { title: '커뮤니티', description: '회원관리, 게시판관리 등 게시판 위주의 커뮤니티 홈페이지', image: '/images/card2.jpg' },
  { title: '맞춤형 웹사이트', description: '반응형, 모바일, 도메인, 유지보수까지 한 번에 맞춤형으로 제공합니다.', image: '/images/card1.jpg' },
];
</script>

<style scoped>

.product-section {
  display: flex;
  flex-direction: column; /* 기본적으로 컬럼으로 배치 (모바일 우선) */
  align-items: center;
  padding: 40px 20px; /* 모바일 패딩 */
  background: #f8f8f8; /* 섹션 배경색 추가 */
}

/* 섹션 헤더 */
.product-header {
  width: 100%;
  max-width: 1200px; /* 최대 너비 설정 */
  text-align: center;
  margin-bottom: 40px;
}

.product-header h2 {
  font-size: 2.5rem; /* 모바일 폰트 사이즈 */
  font-weight: 800;
  text-transform: uppercase;
  margin-bottom: 15px;
  color: #333;
}

.product-header p {
  font-size: 1rem;
  color: #555;
  line-height: 1.6;
}

/* Swiper 컨테이너 */
.product-swiper {
  width: 100%;
  max-width: 1200px; /* Swiper 컨테이너 최대 너비 */
}

/* 카드 스타일 */
.card {
    min-width: 300px; 
    min-height: 380px;
    border-radius: 0.75rem;
    border: 1px solid #eee; 
    box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
    padding: 1.5rem;
    text-align: center;
    background-color: #fff; 
    color: #333; 
    transition: transform 0.3s ease, box-shadow 0.3s ease; 
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.card:hover {
  transform: translateY(-8px); /* 카드 호버 시 약간 위로 이동 */
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15); /* 호버 시 그림자 강화 */
}

.card-image {
  width: 100%;
  height: 180px; /* 높이 조정 */
  margin-bottom: 1.5rem;
  border-radius: 8px; /* 이미지 테두리 둥글게 */
  overflow: hidden;
  background-color: #f0f0f0; /* 이미지가 로드되기 전 배경 */
}

.card-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.4s ease; /* 이미지 호버 효과 전환 */
}

.card:hover .card-image img {
  transform: scale(1.05); /* 이미지 호버 시 약간 확대 */
}

.card-title {
  font-size: 1.35rem; /* 폰트 사이즈 조정 */
  font-weight: 700;
  margin-top: 0;
  margin-bottom: 0.75rem;
  color: #222;
}

.card-description {
  font-size: 1rem; /* 폰트 사이즈 조정 */
  color: #6a6a6a;
  line-height: 1.5;
  margin-top: 0.5rem;
  display: -webkit-box; /* 여러 줄 말줄임표 적용을 위한 설정 */
  -webkit-line-clamp: 3; /* 최대 3줄로 제한 (원하는 줄 수로 변경) */
  -webkit-box-orient: vertical;
  overflow: hidden;
  text-overflow: ellipsis;
}

/* --- 미디어 쿼리 (반응형) --- */

/* 태블릿 (640px 이상) */
@media (min-width: 640px) {
  .product-section {
    padding: 60px 40px;
  }

  .product-header h2 {
    font-size: 3rem;
  }
  .product-header p {
    font-size: 1.1rem;
  }

  .card {
    min-width: auto; /* 태블릿에서는 스와이퍼가 너비를 조절하도록 */
  }
}

/* 데스크탑 (1024px 이상) */
@media (min-width: 1024px) {
  .product-section {
    flex-direction: row; /* 데스크탑에서는 가로로 배치 */
    justify-content: center; /* 중앙 정렬 */
    align-items: flex-start; /* 상단 정렬 */
    padding: 80px 60px;
  }

  .product-header {
    width: 30%; /* 원본 코드처럼 30% 너비 유지 */
    text-align: left;
    padding: 0 50px 0 0; /* 우측 패딩으로 Swiper와 간격 */
    margin-bottom: 0; /* 섹션 헤더 하단 마진 제거 */
    flex-shrink: 0; /* 줄어들지 않도록 설정 */
  }

  .product-header h2 {
    font-size: 3.5rem; /* 데스크탑 폰트 사이즈 */
  }

  .product-swiper {
    width: 70%; /* 나머지 공간을 Swiper가 차지 */
  }
}

/* 대형 데스크탑 (1280px 이상) */
@media (min-width: 1280px) {
  .product-section {
    padding: 100px 80px;
  }

  .product-header {
    padding-right: 80px;
  }

  .product-header h2 {
    font-size: 4rem;
  }
}

/* Swiper 기본 스타일 오버라이드 (선택 사항, SwiperWrapper 내부에서 처리하는 것이 좋음) */
/* .swiper-button-next,
.swiper-button-prev {
  color: #007aff; 
} */
/* .swiper-pagination-bullet-active {
  background: #007aff;
} */
</style>