const displayBorder = (item) => {

  // Variable
  const allInputs = document.querySelectorAll('.card-rounded__for_modal');

  // Handle border on selected character
  if (allInputs) {
    allInputs.forEach((card) => {
      card.addEventListener("click", (event) => {

        // Variable if an other character is already selected
        const allCheckedCards = document.querySelectorAll('.border-gradient-green');

        // Remove all other borders on other characters
        if (allCheckedCards) {
          allCheckedCards.forEach((checkedCard) => {
            checkedCard.classList.remove('border-gradient-green');
          });
        }

        // Add border on new selected character
        card.classList.add('border-gradient-green');

      });
    });
  }
}

export { displayBorder };
