const displayBtn = () => {

  // Variable
  const hiddenBtn = document.querySelector('button.d-none');
  const countBackClass = document.querySelectorAll('.card-circle-back');
  const frontCards = document.querySelectorAll('.card-circle__small');

  // Validate form on click
  if (hiddenBtn) {
    if (countBackClass.length > 21) {
      hiddenBtn.classList.remove('d-none');
      frontCards.forEach((frontCard) => {
        frontCard.classList.add('pulse');
      });
    }
  }
}

export { displayBtn };
