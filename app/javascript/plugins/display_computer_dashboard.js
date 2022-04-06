const displayComputerDashboard = (item) => {

  // Variables
  const computerDashboard = document.querySelector('#computer-dashboard');
  const mediaQuery = window.matchMedia("(min-width: 1100px)");

  // Handle border on selected character
  if (computerDashboard) {
    if (mediaQuery.matches === true) {
      computerDashboard.classList.remove('d-none');
    };
  }
}

export { displayComputerDashboard };
