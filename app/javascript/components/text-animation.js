import Typed from 'typed.js';

const initLandingpageAnimation = () => {
  const landingAnimation = document.querySelector("#home-animation")
  if (landingAnimation) {
    var typed = new Typed(landingAnimation, {
      stringsElement: '#typed-strings',
      typeSpeed: 40,
      loop: true,
      loopCount: 2
    });
  };
};

export { initLandingpageAnimation };
