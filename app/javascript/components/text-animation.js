import Typed from 'typed.js';

const initLandingpageAnimation = () => {
  var typed = new Typed('#home-animation', {
    stringsElement: '#typed-strings',
    typeSpeed: 40,
    loop: true,
    loopCount: 2
  });
};

export { initLandingpageAnimation };
