<template>
  <header :class="['app-header', { scrolled: isScrolled }]">
    <div class="header-inner">
      <a href="/" class="logo">
        <img src="/images/logo.png" alt="로고" />
      </a>
      <nav-TopNav />
    </div>
  </header>
</template>

<script setup>
import { ref, onMounted, onUnmounted } from 'vue';

const isScrolled = ref(false);

const handleScroll = () => {
  isScrolled.value = window.scrollY > 50;
};

onMounted(() => {
  window.addEventListener('scroll', handleScroll, { passive: true });
});

onUnmounted(() => {
  window.removeEventListener('scroll', handleScroll);
});
</script>

<style>
.app-header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 999;
  padding: 2rem 0 0;
  background-color: transparent;
  color: white;
  transition: all 0.3s ease;
}
.app-header.scrolled {
  background-color: white;
  color: black;
  box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}
.header-inner {
  padding: 0 30px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  flex-wrap: wrap;
}
.logo {
  font-size: 1.25rem;
  font-weight: bold;
}

@media (max-width: 768px) {
  .app-header {
    padding: 1rem 0 0;
    color: black;
  }

  .header-inner {
    padding: 0 15px;
  }

  .logo img {
    max-height: 60px;
  }
}
@media (max-width: 480px) {
  .app-header {
    padding: 0.75rem 0 0;
  }

  .header-inner {
    padding: 0 10px;
  }

}

</style>