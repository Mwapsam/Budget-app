// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
// import "@hotwired/turbo-rails"
//= require jquery
//= require jquery_ujs
// import "controllers"


let image_div = document.getElementById('icon');
let image_picker = document.getElementById('image_picker');

image_div.addEventListener('click', () => {
  image_picker.click();
});

let readURL = (input) => {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
        $('#img_prev')
          .attr('src', e.target.result)
          .width(70)
          .height(70);
      };

      reader.readAsDataURL(input.files[0]);
    }
  }

 

