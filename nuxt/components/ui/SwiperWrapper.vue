<template>
  <ClientOnly>
    <Swiper
      :modules="activeModules" :slides-per-view="normalizedSlidesPerView"
      :space-between="calculatedSpaceBetween"
      :pagination="calculatedPagination"
      :navigation="calculatedNavigation"
      :loop="calculatedLoop"
      :autoplay="calculatedAutoplay"
      :breakpoints="props.breakpoints" >
      <slot />
      </Swiper>
  </ClientOnly>
</template>

<script setup lang="ts">
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination"; // 이 CSS는 navigation이나 pagination이 활성화될 때 필요합니다.
import { Swiper } from 'swiper/vue';
import { Navigation, Pagination, Autoplay } from 'swiper/modules';
import { computed } from 'vue';

const props = defineProps<{
  slidesPerView?: number | 'auto';
  spaceBetween?: number;
  pagination?: Record<string, any> | boolean; // boolean 타입 포함
  navigation?: boolean;
  loop?: boolean;
  autoplay?: boolean | Record<string, any>;
  breakpoints?: Record<string, any>; // breakpoints prop 추가
}>();


const normalizedSlidesPerView = computed(() => {
  const value = props.slidesPerView ?? 1;
  return value === 'auto' ? 'auto' : Number(value);
});

const calculatedSpaceBetween = computed(() => props.spaceBetween ?? 10);
const calculatedLoop = computed(() => props.loop ?? false);
const calculatedAutoplay = computed(() => props.autoplay ?? false);
const calculatedNavigation = computed(() => props.navigation ?? true);

const calculatedPagination = computed(() => {
  if (props.pagination === false) {
    return false; // pagination : false
  }
  return props.pagination ?? { clickable: true }; // pagination : true (default)
});

// activeModules
const activeModules = computed(() => {
  const modulesArray = [Autoplay]; // Autoplay는 기본적으로 포함

  if (calculatedNavigation.value) { // navigation prop이 true
    modulesArray.push(Navigation);
  }
  if (calculatedPagination.value !== false) { // pagination prop이 false가 아닐 때만
    modulesArray.push(Pagination);
  }
  return modulesArray;
});
</script>