function initCarousel() {
  const carousel = $("#carousel-questions");
  const btnNext = document.getElementById("btn-next");
  const btnPrev = document.getElementById("btn-prev");
  const carouselItems = document.querySelectorAll(".carousel-item").length

  let counter = 1;

  const btnSubmit = document.querySelector(".questions-submit");
  btnSubmit.style.display = "none";

  btnNext.addEventListener("click", (event) => {
    const lastSlide = document.querySelector(".last-slide");
    const seconToLast = document.querySelector(".second-last");
    if (lastSlide.classList.contains("active") === false) {
      carousel.carousel('next');
      console.log(lastSlide)
      if (counter === carouselItems - 1) {
        btnSubmit.style.display = "inline-block"
      }
      // console.log(event);
      // console.log(event.currentTarget);
    }
    // else if (secondToLast.classlist.contains("active")){
    // }
    counter += 1;
  });

  btnPrev.addEventListener("click", (event) => {
    carousel.carousel('prev');
    console.log(event);
    console.log(event.currentTarget);
  });
}
export { initCarousel }

