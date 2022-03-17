const displayQuestions = () => {

  // Variable
  const mediaQuery = window.matchMedia("(max-width: 767px)");
  const formForSmDevice = document.querySelector('#question-for-sm-device');
  const formForMdDevice = document.querySelector('#question-for-md-device');
  const countBackClass = document.querySelectorAll('.card-rounded-back');
  const frontCards = document.querySelectorAll('.card-rounded-md');
  const formInput = document.querySelector('#question-form');

  // Validate form on click
  if (formForMdDevice) {
    if (mediaQuery.matches === true) {
      formForMdDevice.classList.add('d-none');
      formForSmDevice.classList.remove('d-none');
    } else {
      formForMdDevice.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
    }
  }
}

export { displayQuestions };
