const displayQuestions = () => {

  // Variable for Questions
  const mediaQuery = window.matchMedia("(max-width: 767px)");
  const formForSmDevice = document.querySelector('#question-for-sm-device');
  const formForMdDevice = document.querySelector('#question-for-md-device');

  // Variable for Guess who? button
  const guesswhoBtn = document.querySelector('#guesswho-btn');
  const countBackClass = document.querySelectorAll('.card-rounded-back');
  const frontCards = document.querySelectorAll('.card-rounded-round');

  // Validate form on click
  if (formForSmDevice) {
    if (mediaQuery.matches === true) {
      // Display button
      if (countBackClass.length >= 22) {
        guesswhoBtn.classList.remove('d-none');
        formForSmDevice.classList.add('d-none');
        formForMdDevice.classList.add('d-none');

        // frontCards.forEach((frontCard) => {
        //   frontCard.classList.add('pulse-white-large');
        // });
      }
    } else {
      formForMdDevice.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
    }
  }
}

export { displayQuestions };
