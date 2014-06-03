$(document).ready(function(){
  loadSlideshow();
});

function loadSlideshow(){
  slideshow = { numOfSlides : $('.listing_photo').size() }
  $('.slideshow-arrow').on('click', changeCurrentSlide);
}

function changeCurrentSlide(){
  getCurrentSlideIdAndHide();
  setCurrentDirection(this);
  setNextSlide();
};

function getCurrentSlideIdAndHide(){
  var currentSlide = $('.listing_photo.display-me');
  slideshow.currentSlideId = currentSlide.data('id');
  $(currentSlide).removeClass('display-me');
}

function setCurrentDirection(chosenArrow){
  slideshow.chosenDirection = $(chosenArrow).data('direction');
}

function setNextSlide(){
  var currentSlideId = slideshow.currentSlideId;
  var direction = slideshow.chosenDirection;

  if (direction == 'prev') { nextSlideId = currentSlideId-1 }
  else if (direction == 'next') { nextSlideId = currentSlideId+1 }

  if ( nextSlideId > slideshow.numOfSlides ){ nextSlideId = 1 }
  else if ( nextSlideId < 1 ){ nextSlideId = slideshow.numOfSlides };

  displayChosen(nextSlideId);
  changeSlideshowNumber(nextSlideId);
}

function displayChosen(id){
  var nextSlide = '.listing_photo[data-id=' + id + ']';
  $(nextSlide).addClass('display-me');
}

function changeSlideshowNumber(num){
  var newSlideNumber = "Photo " + num;
  $('#listing-photo-slideshow-number-display').text(newSlideNumber);
}
