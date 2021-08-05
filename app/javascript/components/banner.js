import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Veggie Spaghetti?", "..it's musta with our Pasta!"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };