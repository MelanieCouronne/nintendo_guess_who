const selectedCharacter = (item) => {

  // Variable
  const triggerBtns = document.querySelectorAll('.card-rounded');

  // Handle border on selected character & validation of form
  if (triggerBtns) {
    triggerBtns.forEach((triggerBtn) => {
      triggerBtn.addEventListener("click", (event) => {

        // Variable if an other character is selected
        const borderStickys = document.querySelectorAll('.border-sticky');

        // Remove border on the other selected character
        if (borderStickys) {
          borderStickys.forEach((borderSticky) => {
            borderSticky.classList.remove('border-sticky');
          });
        }

      // Add border on the selected character
      triggerBtn.classList.add('border-sticky')

      });
    });
  }

}

export { selectedCharacter };
