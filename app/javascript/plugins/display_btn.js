const displayBtn = () => {

  // Variable
  const guesswhoBtn = document.querySelector('#guesswho-btn');
  const countBackClass = document.querySelectorAll('.card-rounded-back');
  const frontCards = document.querySelectorAll('.card-rounded-round');
  const formForSmDevice = document.querySelector('#question-for-sm-device');
  const formForMdDevice = document.querySelector('#question-for-md-device');

  // Validate form on click
  if (guesswhoBtn) {
    if (countBackClass.length >= 22) {
      guesswhoBtn.classList.remove('d-none');
      formForSmDevice.classList.add('d-none');
      formForMdDevice.classList.add('d-none');

      frontCards.forEach((frontCard) => {
        frontCard.classList.add('pulse');
      });
    }
  }
}

export { displayBtn };
