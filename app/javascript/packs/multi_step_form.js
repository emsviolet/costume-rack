const multiStepForm = () => {

  // Array with all the classes of the form steps defined + counter variable for navigation in array.
  const allSteps = ["step-one", "step-two", "step-three", "step-four"]
  let counter = 0

  // Event listener added on the 'next' button for the event 'click'.
  // For every 'click' we navigate in the form step classes + save form input of fields.
  const nextStepButton = document.querySelector(".next-step");
  if (nextStepButton) {
    nextStepButton.addEventListener("click", (event) => {
      event.preventDefault();

      const photoInput = document.querySelector("#costume_photo").value;
      const nameInput = document.querySelector("#costume_name").value;
      const descriptionInput = document.querySelector("#costume_description").value;
      const occasionInput = document.querySelector("#costume_occasion").value;
      const categoryInput = document.querySelector("#costume_category").value;
      const conditionInput = document.querySelector("#costume_condition").value;
      const sizeInput = document.querySelector("#costume_size").value;
      const colorInput = document.querySelector("#costume_color").value;
      const locationInput = document.querySelector("#costume_location").value;
      const priceInput = document.querySelector("#costume_price").value;


      console.log(photoInput);
      console.log(nameInput);
      console.log(descriptionInput);
      console.log(occasionInput);
      console.log(categoryInput);
      console.log(conditionInput);
      console.log(sizeInput);
      console.log(colorInput);
      console.log(locationInput);
      console.log(priceInput);


      const currentStep = document.querySelector(`.${allSteps[counter]}`);
      display(currentStep);
      counter += 1

      // if-else statement that checks if we are on the last 'form-step'.
      // In case of 'true' -> the 'next' button changes to 'submit' and we create the instance.

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

// controller used for "showing" and "hiding" the form steps classes.
function display(element) {
  if (element.style.display === "none") {
    element.style.display = "block";
  } else {
    element.style.display = "none";
  }
}

export default multiStepForm
