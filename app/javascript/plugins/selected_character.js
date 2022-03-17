import { end } from "@popperjs/core";

// const mediaQuery = window.matchMedia('(max-width: 767px)')


const selectedCharacter = (item) => {

  // Variable
  const allCards = document.querySelectorAll('.box-bounce');
  // Create a condition that targets viewports at least 767px wide
  const mediaQuery = window.matchMedia("(max-width: 767px)");

  // Handle checkbox on selected character
  if (allCards) {
    allCards.forEach((card) => {
      card.addEventListener("click", (event) => {

        // Variable if an other character is already selected
        const allCheckboxes = document.querySelectorAll('.card-checkbox');
        const cardToCheck = card.querySelector('.card-checkbox');

        // Remove all other checkboxes on other characters
        if (allCheckboxes) {
          allCheckboxes.forEach((checkbox) => {
            checkbox.classList.add('d-none');
            if (mediaQuery.matches === true) {
              checkbox.classList.remove('pulse-green');
            } else {
              checkbox.classList.remove('pulse-white');
            };
          });
        }

        // Add checkbox on new selected character
        cardToCheck.classList.remove('d-none');
        if (mediaQuery.matches === true) {
          cardToCheck.classList.add('pulse-green');
        } else {
          cardToCheck.classList.add('pulse-white');
        };

      });
    });
  }
}

export { selectedCharacter };
