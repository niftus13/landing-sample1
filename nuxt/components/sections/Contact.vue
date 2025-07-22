<template>
  <section id="contact" class="section contact-section">
    <div class="container">
      <div class="section-header">
        <h2>지금 문의하세요</h2>
        <p>전문적인 서비스로 당신의 웹 페이지를 새롭게 만들어 드립니다.</p>
      </div>

      <div class="grid grid-3">
        <div class="contact-card">
          <div class="icon-wrapper">
            <i class="fas fa-phone contact-icon"></i>
          </div>
          <h3 class="card-title">전화 문의</h3>
          <p class="card-description"> 대표번호</p>
          <div class="contact-info">
            <a href="tel:16685352">1668-5352</a>
          </div>
        </div>

        <div class="contact-card">
          <div class="icon-wrapper">
            <i class="fas fa-envelope contact-icon"></i>
          </div>
          <h3 class="card-title">이메일 문의</h3>
          <p class="card-description">자세한 견적을 원하시나요?</p>
          <div class="contact-info">
            <a href="mailto:example@example.com">KOREAfirstpage@gmail.com</a>
          </div>
        </div>

        <div class="contact-card">
            <div class="icon-wrapper">
                <i class="fas fa-comment-dots contact-icon"></i> 
            </div>
            <h3 class="card-title">빠른 문의</h3>
            <p class="card-description">실시간 채팅 상담을 이용해보세요.</p>
            <div class="contact-buttons">
                <a class="social-btn kakao-btn" href="https://open.kakao.com/o/s0nbI7jh" target="_blank" rel="noopener noreferrer">
                    <i class="fas fa-comment"></i> <span>카카오톡</span>
                </a>
                <a class="social-btn tele-btn" href="https://t.me/googlejs" target="_blank" rel="noopener noreferrer">
                    <i class="fab fa-telegram-plane"></i> <span>텔레그램</span>
                </a>
            </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>

</script>

<style>
.contact-section .contact-buttons {
  display: flex;
  flex-direction: column; /* 버튼을 세로로 정렬 */
  gap: 10px; /* 버튼 간 간격 */
  margin-top: 1rem; /* 설명 텍스트와의 간격 */
  align-items: center; /* 버튼을 중앙 정렬 */
}

.contact-section .social-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  padding: var(--button-padding);
  border-radius: var(--border-radius-size);
  font-size: 1rem;
  font-weight: 600;
  text-decoration: none;
  transition: all var(--transition-speed) ease;
  white-space: nowrap;
  border: none;
  cursor: pointer;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
  width: 100%; /* 카드 너비에 맞춰 버튼 확장 */
  max-width: 250px; /* 버튼 최대 너비 제한 */
}

.contact-section .social-btn i {
  margin-right: 8px;
  font-size: 1.2rem;
}

/* --- 카카오톡 버튼 스타일 --- */
.contact-section .kakao-btn {
  background-color: var(--kakao-yellow);
  color: var(--kakao-text-dark);
}

.contact-section .kakao-btn:hover {
  background-color: #fdd800;
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
}

/* --- 텔레그램 버튼 스타일 --- */
.contact-section .tele-btn {
  background-color: var(--telegram-blue);
  color: var(--telegram-text-white);
}

.contact-section .tele-btn:hover {
  background-color: #0077b3;
  transform: translateY(-3px);
  box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
}
</style>