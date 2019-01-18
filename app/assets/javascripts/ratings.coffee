# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
stars = null
starStatus = null
rating = null

@init = ->
  rating = document.querySelector('#rating_stars')
  stars = document.querySelectorAll('.rating-star')
  starStatus = (star.classList.contains('fas') for star in stars)
  document.querySelector('.rating-scale').addEventListener('mouseleave', leaveScale, false)
  star.addEventListener('mouseover', hoverScale, false) for star in stars
  star.addEventListener('click', setRating, false) for star in stars

hoverScale = (event) ->
  for star, i in stars
    if star == event.target
      for star1, j in stars
        if j <= i
          star1.classList.remove('far')
          star1.classList.add('fas')
        else
          star1.classList.remove('fas')
          star1.classList.add('far')
      return

leaveScale = ->
  console.log('leave')
  for star, i in stars
    if starStatus[i] == true
      star.classList.remove('far')
      star.classList.add('fas')
    else
      star.classList.remove('fas')
      star.classList.add('far')

setRating = (event) ->
  console.log('set')
  for star, i in stars
    if star == event.target
      for star1, j in starStatus
        if j <= i
          starStatus[j] = true
        else
          starStatus[j] = false
      rating.value = i + 1
      return