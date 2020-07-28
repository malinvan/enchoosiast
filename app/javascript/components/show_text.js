const showMoreOrLess = document.querySelector(".show-more-or-less")
const detailedDescription = document.querySelector(".career-details")
const status = document.querySelector(".show")

const toggleText = (event) => {
    if (status.classList.contains("unshown")) {
        detailedDescription.style.display = "block";
        status.classList.remove("unshown");
        status.classList.add("shown");
        status.innerText = "show less";
    } else {
        detailedDescription.style.display = "none";
        status.classList.remove("shown");
        status.classList.add("unshown");
        status.innerText = "show more";

    };
};

const clickShow = () => {
  const showMoreOrLess = document.querySelector(".show-more-or-less")
  if (showMoreOrLess) {
    detailedDescription.style.display = "none";
    showMoreOrLess.addEventListener("click", toggleText);
  };
};

export { clickShow }


