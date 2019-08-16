import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["If you like Pina Coladas", "And getting caught in the rain"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
