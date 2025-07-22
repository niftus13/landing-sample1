<template>
  <div class="nav-container">
    <button @click="toggleMenu" class="hamburger-menu-button md:hidden">
      <span class="hamburger-line" :class="{ 'open': isMenuOpen }"></span>
      <span class="hamburger-line" :class="{ 'open': isMenuOpen }"></span>
      <span class="hamburger-line" :class="{ 'open': isMenuOpen }"></span>
    </button>

    <nav class="nav-menu" :class="{ 'active': isMenuOpen }">
      <NuxtLink to="#home" class="nav-item" @click="closeMenu">홈</NuxtLink>
      <NuxtLink to="#product" class="nav-item" @click="closeMenu">상품</NuxtLink>
      <NuxtLink to="#features" class="nav-item" @click="closeMenu">소개</NuxtLink>
      <NuxtLink to="#service" class="nav-item" @click="closeMenu">제작안내</NuxtLink>
      <NuxtLink to="#portfolio" class="nav-item" @click="closeMenu">포트폴리오</NuxtLink>
      <a href="#contact" class="btn-primary">상담하기</a>
    </nav>
  </div>
</template>

<script setup>
import { ref } from 'vue';

const isMenuOpen = ref(false);

const toggleMenu = () => {
  isMenuOpen.value = !isMenuOpen.value;
};

const closeMenu = () => {
  isMenuOpen.value = false;
};
</script>

<style scoped>
.nav-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative; /* Needed for absolute positioning of mobile menu */
  z-index: 1000; /* Ensure nav is on top */
}

/* --- Hamburger Menu Button --- */
.hamburger-menu-button {
  display: none; /* Hidden by default on larger screens */
  background: none;
  border: none;
  cursor: pointer;
  padding: 10px;
  flex-direction: column;
  justify-content: space-around;
  width: 40px;
  height: 25px;
  z-index: 1001; /* Ensure button is on top */
}

.hamburger-line {
  display: block;
  width: 100%;
  min-height: 3px;
  background-color: #333; 
  transition: all 0.3s ease-in-out;
  border-radius: 2px;
  margin: 1px;
}

/* Animation for opening/closing hamburger icon */
.hamburger-line:nth-child(1).open {
  transform: translateY(11px) rotate(45deg);
}

.hamburger-line:nth-child(2).open {
  opacity: 0;
}

.hamburger-line:nth-child(3).open {
  transform: translateY(-11px) rotate(-45deg);
}


/* --- Nav Menu (Desktop) --- */
.nav-menu {
  display: flex; /* Always flex for desktop */
  transition: all 0.3s ease-in-out;
}

.nav-menu > * {
  margin-left: 1rem;
  text-decoration: none;
}

.nav-item {
  padding: 10px;
  border-bottom: 2px solid transparent;
  transition: all 0.2s ease;
  text-decoration: none;
  font-size: large;
  white-space: nowrap; /* Prevent items from wrapping */
  color:black;
}

.nav-item:hover {
  color: #007acc;
  border-bottom: 2px solid #007acc;
}

.router-link-active {
  color: #007acc;
  font-weight: bold;
  border-bottom: 2px solid #007acc;
}

.nav-menu .btn-primary {
  background: linear-gradient(135deg, #259eeb 0%, #1d4ed8 100%);
  color: white;
  padding: 10px 20px;
  border-radius: 5px;
  text-decoration: none;
  margin-right: 60px;
  transition: all 0.3s ease;
}

.btn-primary:hover {
  opacity: 0.9;
}

/* --- Mobile Styles (Hamburger Menu) --- */
@media (max-width: 768px) { /* Adjust breakpoint as needed (e.g., for tablets) */
  .nav-menu {
    position: fixed;
    top:80px; /* Position below the nav-container */
    left: 0;
    width: 100%;
    background-color: #f8f8f8; /* Background for mobile menu */
    flex-direction: column;
    align-items: center;
    padding: 20px 0;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transform: translateY(-100%); /* Start hidden above */
    opacity: 0;
    pointer-events: none; /* Disable interaction when hidden */
    z-index: 999; /* Below the nav-container but above other content */
  }

  .nav-menu.active {
    transform: translateY(0); /* Slide down to show */
    opacity: 1;
    pointer-events: all; /* Enable interaction when active */
  }

  .nav-menu > * {
    margin: 10px 0; /* Adjust spacing for vertical menu */
  }

  .nav-item {
    font-size: large;
    width: 100%;
    text-align: center;
  }

  .hamburger-menu-button {
    display: flex; /* Show hamburger button on small screens */
  }
  .nav-menu .btn-primary {
    margin:0;
    width:80%
  }


}

</style>