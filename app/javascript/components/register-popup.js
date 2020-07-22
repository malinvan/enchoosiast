function showPopUp() {
  const card = document.querySelector("#registerForm");
  const registerB = document.querySelector(".formButton");
  console.log(card, registerB);
  if (card && registerB) {
    card.style.display = "none";
    registerB.addEventListener("click", (event) => {
      event.preventDefault()
      card.style.display = "block";
    });
  };
};

 export { showPopUp }
