function initCarousel() {
  const carousel = $("#carousel-questions");
  const btnNext = document.getElementById("btn-next");
  const btnPrev = document.getElementById("btn-prev");

  btnNext.addEventListener("click", (event) => {
    carousel.carousel('next');
    console.log(event);
    console.log(event.currentTarget);
  });

  btnPrev.addEventListener("click", (event) => {
    carousel.carousel('prev');
    console.log(event);
    console.log(event.currentTarget);
  });
}
export { initCarousel }

