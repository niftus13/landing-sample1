<template>
  <section class="service-section" id="service">
    <div class="container">
      <div class="section-header">
        <h2>전문 웹 사이트 제작 서비스</h2>
        <h3>홈페이지제작, 도메인, 호스팅, 유지보수 까지 한곳에서</h3>
        <p>트렌디한 홈페이지 제작 전문</p>
      </div>

      <div class="grid grid-3">
        <div class="card">
          <div class="card-image">
            <img src="/images/card1.jpg" alt="BASIC 서비스 이미지" loading="lazy">
          </div>
          <h3 class="card-title">BASIC</h3>
          <h4 class="card-price">가격: 299,000 ~</h4>
          <div class="card-content">
            <p><strong>(워드프레스X, 자체제작)</strong> 랜딩페이지 1장</p>
            <p class="option-title">옵션:</p>
            <ul class="option-list">
              <li>페이지 추가당 <strong>30,000 ~ 100,000</strong> <br>(콘텐츠양, 섹션에 따라 상이)</li>
              <li>원하는 도메인주소 연결 + SSL보안인증서 + 서버호스팅1년: <strong>240,000</strong></li>
              <li>SEO 검색엔진 상위노출 최적화 작업 (별도 문의)</li>
            </ul>
          </div>
          <a href="#contact" class="btn btn-secondary">상담 문의</a>
        </div>

        <div class="card popular">
          <div class="card-badge">인기</div>
          <div class="card-image">
            <img src="/images/card2.jpg" alt="DELUXE 서비스 이미지" loading="lazy">
          </div>
          <h3 class="card-title">DELUXE</h3>
          <h4 class="card-price">가격: 990,000 ~</h4>
          <div class="card-content">
            <p>기업페이지, 쇼핑몰, 커뮤니티 등</p>
            <p class="option-title">옵션:</p>
            <ul class="option-list">
              <li>페이지 추가당 <strong>50,000 ~ 100,000</strong> <br>(콘텐츠양, 섹션에 따라 상이)</li>
              <li>기능 추가당 추가금액 발생 (별도 문의)</li>
              <li>원하는 도메인주소 연결 + SSL보안인증서 + 서버호스팅1년: <strong>240,000</strong></li>
              <li>SEO 검색엔진 상위노출 최적화 작업 (별도 문의)</li>
            </ul>
          </div>
          <a href="#contact" class="btn btn-primary">지금 시작하기</a>
        </div>

        <div class="card">
          <div class="card-image">
            <img src="/images/card3.jpg" alt="PREMIUM 서비스 이미지" loading="lazy">
          </div>
          <h3 class="card-title">PREMIUM</h3>
          <h4 class="card-price">가격: 별도 문의</h4>
          <div class="card-content">
            <p>커스텀제작 패키지(결제전 상담필수)</p>
            <p class="option-title">서비스:</p>
            <ul class="option-list">
              <li>WEP: 전문 담당자가 심층 상담 도와드립니다.</li>
              <li>APP: 전문 담당자가 심층 상담 도와드립니다.</li>
            </ul>
          </div>
          <a href="#contact" class="btn btn-secondary">상담 문의</a>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
// 스크립트 부분은 변경 없음
</script>

<style scoped>
/* --- CSS 변수 (Variables) --- */
:root {
  --primary-color: #2563eb; /* 버튼, 강조 색상 */
  --secondary-color: #555;  /* 보조 버튼 색상 */
  --bg-light: #f8f9fa;      /* 섹션 배경색 */
  --card-bg: #ffffff;       /* 카드 배경색 */
  --shadow-light: rgba(0, 0, 0, 0.08); /* 카드 그림자 */
  --border-light: #e0e0e0;  /* 카드 테두리 */
  --text-dark: #333;        /* 기본 텍스트 색상 */
  --text-medium: #666;      /* 보조 텍스트 색상 */
  --text-price: var(--primary-color); /* 가격 텍스트 색상 */
  --section-padding-y: 5rem; /* 섹션 상하 패딩 */
  --container-max-width: 1200px; /* 컨테이너 최대 너비 */
}

.service-section {
  background: var(--bg-light);
  padding: var(--section-padding-y) 0;
}








/* --- 반응형 (Responsive) --- */

/* 태블릿 (Tablet) - 768px ~ 1023px */
@media (max-width: 1023px) {
  :root {
    --section-padding-y: 3rem;
  }
  .section-header {
    margin-bottom: 3rem;
  }
  .section-header h2 {
    font-size: 2.2rem;
  }
  .section-header h3 {
    font-size: 1.3rem;
  }
  .section-header p {
    font-size: 1rem;
  }
  .grid {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); /* 태블릿에서는 2열 또는 3열 유동적으로 */
    gap: 1.5rem;
  }
  .card {
    border-radius: 12px;
  }
  .card-image {
    height: 180px;
  }
  .card-title {
    font-size: 1.6rem;
  }
  .card-price {
    font-size: 1.2rem;
  }
  .card-content {
    font-size: 0.9rem;
  }
  .btn {
    padding: 10px 20px;
    font-size: 0.95rem;
  }
}

/* 모바일 (Mobile) - 480px ~ 767px */
@media (max-width: 767px) {
  :root {
    --section-padding-y: 2.5rem;
  }
  .section-header {
    margin-bottom: 2.5rem;
  }
  .section-header h2 {
    font-size: 1.8rem;
  }
  .section-header h3 {
    font-size: 1.1rem;
  }
  .section-header p {
    font-size: 0.9rem;
  }
  .container {
    padding: 0 1rem;
  }
  .grid {
    grid-template-columns: 1fr; /* 모바일에서는 1열 고정 */
    gap: 1.5rem;
  }
  .card {
    border-radius: 10px;
    padding-bottom: 1rem; /* 하단 패딩 조금 줄임 */
  }
  .card-image {
    height: 160px;
    border-radius: 10px 10px 0 0;
  }
  .card-title {
    font-size: 1.5rem;
    margin-top: 1rem;
  }
  .card-price {
    font-size: 1.1rem;
  }
  .card-content {
    font-size: 0.85rem;
    padding: 0 1rem 1rem;
  }
  .card-content .option-list li {
    padding-left: 1.3em;
  }
  .btn {
    width: calc(100% - 2rem);
    margin: 0 1rem 1rem;
    padding: 10px 15px;
    font-size: 0.9rem;
    border-radius: 6px;
  }
  .card-badge {
    top: 10px;
    right: 10px;
    padding: 4px 10px;
    font-size: 0.75rem;
  }
}

/* 아주 작은 모바일 (Very Small Mobile) - ~479px */
@media (max-width: 479px) {
  :root {
    --section-padding-y: 2rem;
  }
  .section-header h2 {
    font-size: 1.6rem;
  }
  .section-header h3 {
    font-size: 1rem;
  }
  .section-header p {
    font-size: 0.85rem;
  }
  .card-image {
    height: 140px;
  }
  .card-title {
    font-size: 1.3rem;
  }
  .card-price {
    font-size: 1rem;
  }
}
</style>