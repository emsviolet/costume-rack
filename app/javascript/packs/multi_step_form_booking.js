const multiStepFormBooking = () => {
  const allSteps = ["page-one-booking", "page-two-booking", "page-three-booking", "page-four-booking"];
  let counter = 0;

  const nextStepButton = document.querySelector(".next-step-booking");
  console.log(nextStepButton)
  nextStepButton.addEventListener("click", (event) => {
    event.preventDefault();

    // console.log(startDateMonthInput)
    // const startDateYearInput = document.querySelector("#booking_start_date_1i").value;
    // const startDateMonthInput = document.querySelector("#booking_start_date_2i").value;
    // const startDateDateInput = document.querySelector("#booking_start_date_3i").value;

    // const endDateYearInput = document.querySelector("#booking_end_date_1i").value;
    // const endDateMonthInput = document.querySelector("#booking_end_date_2i").value;
    // const endDateDateInput = document.querySelector("#booking_end_date_3i").value;

    // const MessageInput = document.querySelector("#booking_message").value;

    // console.log(startDateYearInput, startDateMonthInput, startDateDateInput);
    // console.log(endDateYearInput, endDateMonthInput, endDateDateInput);
    // console.log(MessageInput);

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
};

function display(element) {
  if (element.style.display === "none") {
    element.style.display = "flex";
  } else {
    element.style.display = "none";
  }
}

export default multiStepFormBooking
