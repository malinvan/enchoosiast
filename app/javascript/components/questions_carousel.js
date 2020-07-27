function initCarousel() {
  const carousel = $("#carousel-questions");
  const btnNext = document.getElementById("btn-next");
  const btnPrev = document.getElementById("btn-prev");
  const carouselItems = document.querySelectorAll(".carousel-item").length

  const btnSubmit = document.querySelector(".questions-submit");

  if (btnNext) {

    btnSubmit.style.display = "none";

    btnNext.addEventListener("click", (event) => {
      const lastSlide = document.querySelector(".last-slide");
      const seconToLast = document.querySelector(".second-last");
      //If we are not on the last slide
      if (lastSlide.classList.contains("active") === false) {
        carousel.carousel('next');
        console.log(lastSlide)
      }

      counter += 1;
    });

    carousel.on('slid.bs.carousel', function () {
       if (counter === carouselItems - 1) {
          btnSubmit.style.display = "inline-block"
          btnNext.style.display = "none"
        } else {
          btnSubmit.style.display = "none"
          btnNext.style.display = "inline-block"
        }
    })

    btnPrev.addEventListener("click", (event) => {
      carousel.carousel('prev');
      counter -= 1;
      console.log(event);
      console.log(event.currentTarget);
    });
  };

  btnSubmit.style.display = "none";

  btnNext.addEventListener("click", (event) => {
    const lastSlide = document.querySelector(".last-slide");
    const seconToLast = document.querySelector(".second-last");
    //If we are not on the last slide
    if (lastSlide.classList.contains("active") === false) {
      carousel.carousel('next');
      console.log(lastSlide)
    }

  });

  carousel.on('slid.bs.carousel', function (event) {
    console.log(event)
     if (event.to === carouselItems - 1) {
        btnSubmit.style.display = "inline-block"
        btnNext.style.display = "none"
      } else {
        btnSubmit.style.display = "none"
        btnNext.style.display = "inline-block"
      }
  })

  btnPrev.addEventListener("click", (event) => {
    carousel.carousel('prev');
    console.log(event);
    console.log(event.currentTarget);
  });
}
export { initCarousel }
