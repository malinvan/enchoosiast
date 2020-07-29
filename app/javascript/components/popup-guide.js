function popupGuide() {
  const formGuide = document.querySelector(".form-container");
  const addButton = document.querySelector(".todo-btn");


  formGuide.style.display = "none";
  addButton.addEventListener("click", () => {
    formGuide.style.display = "block";
    document.querySelector(".hide-box-guide").style.display = "block";
  });

  const blur = document.querySelector(".hide-box-guide");
  blur.addEventListener("click", () => {
    blur.style.display = "none";
    formGuide.style.display = "none";
  });
//   if (card && registerB) {
//     card.style.display = "none";
//     registerB.addEventListener("click", (event) => {
//       event.preventDefault()
//
//     });
//   };
 };


 export { popupGuide }
