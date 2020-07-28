const starClicked = (event) => {
  const classList = event.target.classList
  return classList.contains('star') || classList.contains('like-toggle')
         || classList.contains('card-symbols')
}

const initCareerGrid = () => {
  const cards = document.querySelectorAll('.card-pack.career-clickable');
  cards.forEach((card) => {
    card.addEventListener('click', (e) => {
      if (!starClicked(e)) {
        const url = card.dataset.url;
        window.location.href = url;
      }
    })
  })
}

export { initCareerGrid }
