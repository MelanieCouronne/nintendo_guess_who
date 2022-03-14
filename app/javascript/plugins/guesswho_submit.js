const guesswhoSubmit = () => {

  // Variable
  const btnGuesswho = document.querySelector('#guesswho');
  console.log(btnGuesswho);

  // Validates form on click
  if (btnGuesswho) {
    // Onclick we submit the ID
    btnGuesswho.addEventListener("click", (event) => {
      const inputValue = document.querySelector('input[name="flexRadioDefault"]:checked').id;
      console.log(inputValue);
      // inputValue.submit();
      console.log("submit!!!");
    });
  }
}

export { guesswhoSubmit };
