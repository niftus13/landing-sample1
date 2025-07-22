<template>
    <section id="portfolio" class="section portfolio-section">
            <div class="section-header">
                <h2>Our</h2>
                <h2>Portfolio</h2>
            </div>

            <div class="container">
                <div class="container-title">
                    <h3>홈페이지</h3>
                </div>

                <div class="grid grid-3">
                    <div
                    class="card"
                    v-for="item in page"
                    :key="item.id || item.url"
                    >
                    <a :href="item.url" :title="item.title">
                        <div class="card-image">
                        <img :src="item.image" :alt="item.title" />
                        </div>
                        <p>{{ item.title }}</p>
                    </a>
                    </div>
                </div>
            </div>

        <div class="container">
            <div class="container-title">
                <h3>샘플 페이지</h3>
            </div>
            <div class="grid grid-3">
                <div
                class="card"
                v-for="(item, index) in sample"
                :key="index"
                >
                <div class="card-image">
                    <img :src="item.image" :alt="item.title">
                </div>
                <p>{{ item.title }}</p>
                </div>
            </div>
        </div>


    </section>
</template>

<script setup>
const page = [
  { image: '/images/portfolio/뷔팩토리.png', title: '뷔팩토리', url: 'https://xn--oy2b19eo9vy0b.kr' },
  { image: '/images/portfolio/클로버.png', title: '클로버카페', url: 'https://clover-test.heon.me' },
  { image: '/images/portfolio/H.K. AMG PARTS.png', title: 'H.K. AMG PARTS', url: 'https://hk-data-limited.com/' },
  //  { image: '/images/card1.jpg', title: '랜딩5', url: ' ' },
  // 더 추가 가능
];

const sample = [
    { image: '/images/card2.jpg', title: '샘플1' },
  { image: '/images/card2.jpg', title: '샘플2' },
  { image: '/images/card2.jpg', title: '샘플3' },
  { image: '/images/card2.jpg', title: '샘플4' },
  { image: '/images/card2.jpg', title: '샘플5' },
]

</script>


<style scoped>
/* --- CSS 변수 (Variables) --- */

.card p {
    font-size: 1.2rem;
    text-align: center;
    margin-bottom: 0;
}

.portfolio-section {
  background: var(--bg-light);
  padding: 4rem 0; /* 섹션 전체 패딩 조정 */
}


.container:not(:last-child) {
    margin-bottom: 3rem; /* 각 컨테이너 사이 간격 */
}

.container-title {
  padding: 1.5rem 0; /* 패딩 조정 */
  border-bottom: var(--primary-color) solid 3px;
  margin-bottom: 2rem; /* 간격 조정 */
  text-align: center; /* 제목 중앙 정렬 */
}

.container-title h3 {
  font-size: 2rem;
  color: var(--text-dark);
  font-weight: 600;
  margin: 0;
}

/* --- Grid Layout --- */
.grid {
  display: grid;
  gap: 1.5rem; /* 그리드 항목 간 간격 */
  grid-template-columns: repeat(3, 1fr); /* 3열 고정 */
}

/* --- Card Styles --- */
.card {
  background: var(--card-bg);
  border-radius: 12px; /* 모서리 둥글게 */
  padding: 0; /* 내부 패딩은 a 태그 안에서 조절 */
  box-shadow: 0 8px 25px var(--shadow-light); /* 그림자 더 강하게 */
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  border: 1px solid var(--border-light);
  overflow: hidden; /* 이미지 둥근 모서리 적용 */
    padding-bottom: 1rem; /* 하단 패딩 */
}

.card:hover {
  transform: translateY(-8px); /* 호버 시 살짝 위로 */
  box-shadow: 0 12px 35px rgba(0, 0, 0, 0.15); /* 호버 시 그림자 더 진하게 */
}

.card a {
  display: block; 
  text-decoration: none; 
  color: var(--text-dark);
}

.card .card-image {
  width: 100%;
  height: 300px; 
  margin-bottom: 1rem;
  border-radius: 12px 12px 0 0; 
  overflow: hidden;
}

.card-image img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.4s ease;
}

.card:hover .card-image img {
  transform: scale(1.08); 
}

.card .card-title { 
  text-align: center;
  font-size: 1.1rem;
  font-weight: 500;
  color: var(--text-dark);
  padding: 0 1rem; 
  margin-bottom: 0; 
}

/* --- 반응형 (Responsive) --- */

/* 태블릿 (Tablet) - 768px ~ 1023px */
@media (max-width: 1023px) {
  .portfolio-section {
    padding: 3rem 0;
  }
  .section-header {
    font-size: 2rem;
    margin-bottom: 2.5rem;
  }
  .container {
    padding: 0 1rem;
  }
  .container:not(:last-child) {
    margin-bottom: 2.5rem;
  }
  .container-title h3 {
    font-size: 1.7rem;
  }
  .grid {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); /* 태블릿에서는 2열 또는 3열 유동적으로 */
  }
  .card .card-image {
    height: 200px;
  }
  .card .card-title {
    font-size: 1rem;
  }
}

/* 모바일 (Mobile) - 480px ~ 767px */
@media (max-width: 767px) {
  .portfolio-section {
    padding: 2.5rem 0;
  }
  .section-header {
    font-size: 1.8rem;
    margin-bottom: 2rem;
  }
  .container:not(:last-child) {
    margin-bottom: 2rem;
  }
  .container-title {
    padding: 1rem 0;
    margin-bottom: 1.5rem;
  }
  .container-title h3 {
    font-size: 1.5rem;
  }
  .grid {
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); /* 모바일에서는 1열 또는 2열 유동적으로 */
    gap: 1.2rem;
  }
  .card {
    border-radius: 10px;
  }
  .card .card-image {
    height: 160px;
    margin-bottom: 0.8rem;
    border-radius: 10px 10px 0 0;
  }
  .card a {
    padding-bottom: 0.8rem;
  }
  .card .card-title {
    font-size: 0.95rem;
  }
}

/* 아주 작은 모바일 (Very Small Mobile) - ~479px */
@media (max-width: 479px) {
  .portfolio-section {
    padding: 2rem 0;
  }
  .section-header {
    font-size: 1.5rem;
    margin-bottom: 1.5rem;
  }
  .container {
    padding: 0 0.8rem;
  }
  .container-title h3 {
    font-size: 1.3rem;
  }
  .grid {
    grid-template-columns: 1fr; /* 아주 작은 화면에서는 1열 고정 */
    gap: 1rem;
  }
  .card .card-image {
    height: 140px;
  }
  .card .card-title {
    font-size: 0.9rem;
  }
}
</style>