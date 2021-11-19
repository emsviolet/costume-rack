const multiStepFormBooking = () => {
  const allSteps = ["page-one-booking", "page-two-booking", "page-three-booking", "page-four-booking"];
  let counter = 0;

  const nextStepButton = document.querySelector(".next-step-booking");
  console.log(nextStepButton)
  if (nextStepButton) {
    nextStepButton.addEventListener("click", (event) => {
      event.preventDefault();
      const currentStep = document.querySelector(`.${allSteps[counter]}`);
      display(currentStep);
      counter += 1;

      if (counter === 3) {
        const nextStep = document.querySelector(`.${allSteps[counter]}`);
        display(nextStep)
        display(nextStepButton)
        const submitButton = document.querySelector(".submit")
        display(submitButton)
      } else {
        const nextStep = document.querySelector(`.${allSteps[counter]}`);
        display(nextStep)
      };
    });
  }
};

function display(element) {
  if (element.style.display === "none") {
    element.style.display = "flex";
  } else {
    element.style.display = "none";
  }
}

export default multiStepFormBooking
