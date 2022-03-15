const displayBtn = () => {

  // Variable
  const hiddenBtn = document.querySelector('span.d-none');
  const countBackClass = document.querySelectorAll('.card-circle-back');
  const frontCards = document.querySelectorAll('.card-circle__small');
  const formInput = document.querySelector('#question-form');

  // Validate form on click
  if (hiddenBtn) {
    if (countBackClass.length >= 22) {
      hiddenBtn.classList.remove('d-none');
      formInput.classList.add('d-none');

      frontCards.forEach((frontCard) => {
        frontCard.classList.add('pulse');
      });
    }
  }
}

export { displayBtn };
