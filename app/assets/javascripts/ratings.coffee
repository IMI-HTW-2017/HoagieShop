# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
@hoverScale = (element) ->
  stars = document.querySelectorAll('.rating-scale')
  for star, i in stars
    if star == element
      for star1, j in stars
        if j <= i
          star1.classList.remove('far')
          star1.classList.add('fas')
        else
          star1.classList.remove('fas')
          star1.classList.add('far')