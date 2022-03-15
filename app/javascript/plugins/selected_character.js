const selectedCharacter = (item) => {

  // Variable
  const triggerBtns = document.querySelectorAll('.position-relative-for-cards');

  // Handle border on selected character & validation of form
  if (triggerBtns) {
    triggerBtns.forEach((triggerBtn) => {
      triggerBtn.addEventListener("click", (event) => {

        // Variable if an other character is selected
        const borderStickys = document.querySelectorAll('.card-border-red');
        const checkboxes = document.querySelectorAll('.card-checkbox');
        // Remove border on the other selected character
        if (borderStickys) {
          borderStickys.forEach((borderSticky) => {
            borderSticky.classList.remove('card-border-red');
            checkboxes.classList.add('d-none');
          });
        }

      // Add border on the selected character
      triggerBtn.classList.add('card-border-red')
      triggerBtn.classList.remote('d-none')
      });
    });
  }

}

export { selectedCharacter };
