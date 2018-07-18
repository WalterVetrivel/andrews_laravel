window.onscroll = function () {
    toggleStickyNavbar();
};

var navbar = document.getElementById("navbar");

function toggleStickyNavbar() {
    if (window.pageYOffset >= 60) {
        navbar.classList.remove("py-5");
        navbar.classList.add("py-3");
        navbar.classList.add("bg-light");
        navbar.classList.remove("navbar-dark");
        navbar.classList.remove("sticky-navbar");
        navbar.classList.add("navbar-light");
        navbar.classList.add("fixed-top");
    } else {
        navbar.classList.remove("py-3");
        navbar.classList.add("py-5");
        navbar.classList.remove("bg-light");
        navbar.classList.remove("navbar-light");
        navbar.classList.add("navbar-dark");
        navbar.classList.add("sticky-navbar");
        navbar.classList.remove("fixed-top");
    }
}

var scroll = new SmoothScroll('a[href*="#"]', {
    offset: 80,
    clip: true
});

window.sr = ScrollReveal({
    reset: true
});

sr.reveal('.project');
sr.reveal('.employment');
sr.reveal('.education');
sr.reveal('.award');
sr.reveal('.research-project');
sr.reveal('.supervision');
sr.reveal('.research-fund');
sr.reveal('.publication');
sr.reveal('.reference');

sr.reveal('h1, h2', {
    duration: 1500,
    origin: 'top'
});
sr.reveal('.btn', {
    duration: 1500,
    origin: 'right'
});
sr.reveal('#landing p', {
    duration: 1500,
    origin: 'left'
});
sr.reveal('#landing img', {
    duration: 1500,
});
sr.reveal('header hr', {
    duration: 1500,
    origin: 'right'
});
sr.reveal('.fact', {
    duration: 1500,
    origin: 'top'
}, 150);
sr.reveal('.home-award', {
    duration: 1500
}, 150);
sr.reveal('#involvements p', {
    duration: 1500,
    origin: 'top'
}, 150);
sr.reveal('#bio p:nth-child(odd)', {
    duration: 1500,
    origin: 'right'
}, 150);
sr.reveal('#bio p:nth-child(even)', {
    duration: 1500,
    origin: 'left'
}, 150);
sr.reveal('#bio hr:nth-child(odd)', {
    duration: 1500,
    origin: 'right'
}, 150);
sr.reveal('#bio hr:nth-child(even)', {
    duration: 1500,
    origin: 'left'
}, 150);
sr.reveal('.skills-list li', {
    duration: 1000,
    origin: 'top'
}, 50);
sr.reveal('.subjects-list li', {
    duration: 1000,
    origin: 'top'
}, 50);
sr.reveal('.current-research li', {
    duration: 1000,
    origin: 'top'
}, 50);
sr.reveal('.collaborations-list li', {
    duration: 1000,
    origin: 'top'
}, 50);
sr.reveal('.affiliations-list li', {
    duration: 1000,
    origin: 'top'
}, 50);
sr.reveal('#footer', {duration: 1000});
