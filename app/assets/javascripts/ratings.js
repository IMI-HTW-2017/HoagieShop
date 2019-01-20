let stars;
let starStatus = [];
let rating;

function init() {
    rating = document.querySelector('#rating_stars');
    stars = document.querySelectorAll('.rating-star');
    for (let i = 0; i < stars.length; i++) {
        starStatus.push((stars[i].classList.contains('fas')));
    }

    document.querySelector('.rating-scale').addEventListener('mouseleave', leaveScale, false);
    for (let i = 0; i < stars.length; i++) {
        stars[i].addEventListener('mouseover', hoverScale, false);
        stars[i].addEventListener('click', setRating, false);
    }
}

function hoverScale(event) {
    for (let i = 0; i < stars.length; i++) {
        if (stars[i] === event.target) {
            for (let j = 0; j < stars.length; j++) {
                if (j <= i) {
                    stars[j].classList.remove('far');
                    stars[j].classList.add('fas');
                } else {
                    stars[j].classList.remove('fas');
                    stars[j].classList.add('far');
                }
            }
            return;
        }
    }
}

function leaveScale() {
    for (let i = 0; i < stars.length; i++) {
        if (starStatus[i]) {
            stars[i].classList.remove('far');
            stars[i].classList.add('fas');
        } else {
            stars[i].classList.remove('fas');
            stars[i].classList.add('far');
        }
    }
}

function setRating(event) {
    for (let i = 0; i < stars.length; i++) {
        if (stars[i] === event.target) {
            for (let j = 0; j < starStatus.length; j++) {
                starStatus[j] = j <= i;
            }
            rating.value = i + 1;
            return;
        }
    }
}
