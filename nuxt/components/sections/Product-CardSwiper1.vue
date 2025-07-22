<template>
  <section class="card-section" id="product">
    <!-- card Section -->
    <div class="section-header title-product">
      <h2>PRODUCT</h2>
      <p></p>
    </div>
    <div class="swiper swiper-product">
      <SwiperWrapper
        :slidesPerView="4"
        :navigation="false"
        :space-between="40"
        :loop="true"
        :pagination="{clickable:true}"
        :autoplay="{ delay: 3000 }"
      >
        <SwiperSlide v-for="(card, index) in cards" :key="index">
          <div class="card">
            <div class="card-image">
              <img class :src="card.image" :alt="card.title">
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

const cards = [
  { title: '랜딩 페이지', description: '브랜드 이미지에 맞춘 1페이지 구성의 랜딩 페이지', image: '/images/card1.jpg'},
  { title: '기업형 홈페이지', description: '5장으로 구성된 블로그형 기업형 홈페이지', image: '/images/card2.jpg'},
  { title: '쇼핑몰', description: '상품결제, 회원관리 등 복합 기능을 포함한 쇼핑몰 ',image: '/images/card3.jpg' },
  { title: '커뮤니티', description: '회원관리, 게시판관리 등 게시판 위주의 커뮤니티 홈페이지',image: '/images/card2.jpg' },
  { title: '맞춤형 웹사이트', description: '맞춤형으로 반응형, 모바일, 도메인, 유지보수 까지 한번에 ',image: '/images/card1.jpg' },
]
</script>

<style scoped>
.card-section {
  display:flex;
  justify-content: space-between;
  align-items: flex-start;
  background: #fff;
}
.title-product {
 width:30%;
 padding: 60px 50px 40px 0px;
 position: relative;
 z-index: 3;
}
.title-product h2 {
  font-size:3rem;
    font-weight: 800;
    text-transform: uppercase;
    margin-bottom: 15px;
    color: #333;
}
.card {
  min-width: 280px;
  max-width: 320px;
  border-radius: 0.75rem; 
  border: 3px #ddd solid;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  padding: 1.5rem; 
  text-align: center;
  color: white; 
}

.card-title {
  font-size: 1.25rem; 
  font-weight: 700; 
  margin: 0; 
}

.card-description {
  color: #6b7280; 
  margin-top: 0.5rem;
}
.card .card-image {
    width: 100%;
    height: 200px;
    margin-bottom: 1.5rem;
    border-radius: 10px;
    overflow: hidden;
}
.card-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.3s ease;
}

</style>
