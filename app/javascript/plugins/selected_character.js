const selectedCharacter = (item) => {

  // Variable
  const allCards = document.querySelectorAll('.box-bounce');

  // Handle checkbox on selected character
  if (allCards) {
    allCards.forEach((card) => {
      card.addEventListener("click", (event) => {

        // Variable if an other character is already selected
        const allCheckboxes = document.querySelectorAll('.card-checkbox');
        const cardToCheck = card.querySelector('.card-checkbox')
        console.log(cardToCheck)

        // Remove all other checkboxes on other characters
        if (allCheckboxes) {
          allCheckboxes.forEach((checkbox) => {
            checkbox.classList.add('d-none');
          });
        }

      // Add checkbox on new selected character
      cardToCheck.classList.remove('d-none')
      });
    });
  }

}

export { selectedCharacter };
