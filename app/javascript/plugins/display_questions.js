const displayQuestions = () => {

  // Variables for Questions
  const mediaQuery = window.matchMedia("(max-width: 991px)");
  const formForSmDevice = document.querySelector('#question-for-sm-device');
  const formForMdDevice = document.querySelector('#question-for-md-device');

  // Variables for Guess who? button
  const guesswhoBtn = document.querySelector('#guesswho-btn');
  const countBackClass = document.querySelectorAll('.card-rounded-back');
  const frontCards = document.querySelectorAll('.card-rounded__for_round');

  // Variable for gameboard
  const slots = document.querySelectorAll('.slot-white');

  if (formForSmDevice) {
    if (countBackClass.length >= 22) {
      guesswhoBtn.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
      formForMdDevice.classList.add('d-none');
    } else if (mediaQuery.matches !== true) {
      formForMdDevice.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
    }
  }

  // // Validate form on click
  // if (formForSmDevice) {
  //   if (mediaQuery.matches === true) {
  //     // Display button Guess who
  //     if (countBackClass.length >= 22) {
  //       guesswhoBtn.classList.remove('d-none');
  //       formForSmDevice.classList.add('d-none');
  //       formForMdDevice.classList.add('d-none');
  //     } else { // Display Question card above characters cards
  //       formForSmDevice.classList.remove('d-none');
  //     };
  //   } else {
  //     formForMdDevice.classList.remove('d-none');
  //     formForSmDevice.classList.add('d-none');
  //   }
  // }
}

export { displayQuestions };
