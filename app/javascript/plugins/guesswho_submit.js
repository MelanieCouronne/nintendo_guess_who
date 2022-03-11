const guesswhoSubmit = () => {

  // Variable
  const btnGuesswho = document.querySelectorAll('#guesswho');
  console.log("trigger 1");

  // Validate form on click
  if (btnGuesswho) {
    // Onclick we submit the ID
    btnTrigger.addEventListener("click", (event) => {
      const inputValue = document.querySelector('input[name="flexRadioDefault"]:checked').value;
      console.log(inputValue);
      inputValue.submit();
      console.log("submit!!!");
    });
  }
}

export { guesswhoSubmit };
