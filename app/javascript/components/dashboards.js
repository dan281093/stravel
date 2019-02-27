function cardsFunction() {
  const cards = document.querySelectorAll(".card-dashboard");
  cards.forEach((card) => {
    console.log(card);
    card.addEventListener("click", event => {

    })
  });
};

export { cardsFunction };
