const displayQuestions = () => {

  // Variables for Questions
  const mediaQuery = window.matchMedia("(max-width: 991px)");
  const formForSmDevice = document.querySelector('#question-for-sm-device');
  const formForMdDevice = document.querySelector('#question-for-md-device');

  // Variables for Guess who? button
  const guesswhoBtn = document.querySelector('#guesswho-btn');
  const countBackClassForUserOnly = document.querySelectorAll('.count-back-class');

  if (formForSmDevice || formForMdDevice ) {
    if (countBackClassForUserOnly.length >= 22) {
      guesswhoBtn.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
      formForMdDevice.classList.add('d-none');
    } else if (mediaQuery.matches !== true) {
      formForMdDevice.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
    }
  }
}

export { displayQuestions };
