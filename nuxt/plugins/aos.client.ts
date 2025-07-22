import "aos/dist/aos.css";
import AOS from "aos";

export default defineNuxtPlugin(() => {
  if (process.client) {
    window.addEventListener("DOMContentLoaded", () => {
      AOS.init({
        once: true,
        duration: 800,
        easing: "ease-out",
        offset: 50,
      });
      setTimeout(() => {
        AOS.refresh();
      }, 1000);
    });
  }
});
