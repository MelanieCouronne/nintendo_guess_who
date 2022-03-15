const selectedCharacter = (item) => {

  // Variable
  const triggerBtns = document.querySelectorAll('.card-rounded');
  console.log(triggerBtns)
  // Handle border on selected character & validation of form
  if (triggerBtns) {
    triggerBtns.forEach((triggerBtn) => {
      triggerBtn.addEventListener("click", (event) => {

        // Variable if an other character is selected
        const borderStickys = document.querySelectorAll('.card-border-red');
        console.log(event)
        // Remove border on the other selected character
        if (borderStickys) {
          borderStickys.forEach((borderSticky) => {
            borderSticky.classList.remove('card-border-red');
            console.log("Hello 1")
          });
        }

      // Add border on the selected character
      triggerBtn.classList.add('card-border-red')
        console.log("hello 2")
      });
    });
  }

}

export { selectedCharacter };
