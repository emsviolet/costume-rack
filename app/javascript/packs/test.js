// const multiStepFormOne = () => {
//   const nextButton = document.querySelector(".next-step");
//   nextButton.addEventListener("click", (event) => {
//     event.preventDefault();
//     const stepOneForm = document.querySelector(".step-one");
//     const nameInput = document.querySelector("#costume_name");
//     const descriptionInput = document.querySelector("#costume_description");
//     const name = nameInput.value;
//     const description = descriptionInput.value;
//     stepOneForm.innerHTML = "";
//     multiStepFormTwo(name, description)
//   });
// };

// const multiStepFormTwo = (name, description) => {
//   injectStepTwo()
// };

// const injectStepTwo = () => {
//   const step_two = `<div class="col-6 form-group">
//           <div class="form-group select optional costume_size"><label class="select optional" for="costume_size">Costume size:</label><select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select></div><br>
//         </div>
// <div class="form-group select optional costume_size"><label class="select optional" for="costume_size">Costume size:</label><select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select></div>
// <label class="select optional" for="costume_size">Costume size:</label>
// <select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select>
// <option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option>
// <select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select>
// <div class="form-group select optional costume_size"><label class="select optional" for="costume_size">Costume size:</label><select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select></div>
// <br>
// <div class="col-6 form-group">
//           <div class="form-group select optional costume_size"><label class="select optional" for="costume_size">Costume size:</label><select class="form-control select optional" name="costume[size]" id="costume_size"><option value=""></option>
// <option value="XS">XS</option>
// <option value="S">S</option>
// <option value="M">M</option>
// <option value="L">L</option>
// <option value="XL">XL</option>
// <option value="XXL">XXL</option></select></div><br>
//         </div>
// <div class="col-6 form-group">
//           <div class="form-group select optional costume_category"><label class="select optional" for="costume_category">Costume category:</label><select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select></div><br>
//         </div>
// <div class="form-group select optional costume_category"><label class="select optional" for="costume_category">Costume category:</label><select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select></div>
// <label class="select optional" for="costume_category">Costume category:</label>
// <select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select>
// <option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option>
// <select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select>
// <div class="form-group select optional costume_category"><label class="select optional" for="costume_category">Costume category:</label><select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select></div>
// <br>
// <div class="col-6 form-group">
//           <div class="form-group select optional costume_category"><label class="select optional" for="costume_category">Costume category:</label><select class="form-control select optional" name="costume[category]" id="costume_category"><option value=""></option>
// <option value="Male">Male</option>
// <option value="Female">Female</option>
// <option value="Child">Child</option>
// <option value="Pets">Pets</option></select></div><br>
//         </div>
// <div class="col-6 form-group">
//           <div class="form-group select optional costume_color"><label class="select optional" for="costume_color">Costume color:</label><select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select></div><br>
//         </div>
// <div class="form-group select optional costume_color"><label class="select optional" for="costume_color">Costume color:</label><select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select></div>
// <label class="select optional" for="costume_color">Costume color:</label>
// <select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select>
// <option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option>
// <select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select>
// <div class="form-group select optional costume_color"><label class="select optional" for="costume_color">Costume color:</label><select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select></div>
// <br>
// <div class="col-6 form-group">
//           <div class="form-group select optional costume_color"><label class="select optional" for="costume_color">Costume color:</label><select class="form-control select optional" name="costume[color]" id="costume_color"><option value=""></option>
// <option value="Black">Black</option>
// <option value="White">White</option>
// <option value="Red">Red</option>
// <option value="Blue">Blue</option>
// <option value="Yellow">Yellow</option></select></div><br>
//         </div>`
//   const stepOneForm = document.querySelector(".step-one");
//   stepOneForm.innerHTML = step_two;
// }


// export default multiStepFormOne
