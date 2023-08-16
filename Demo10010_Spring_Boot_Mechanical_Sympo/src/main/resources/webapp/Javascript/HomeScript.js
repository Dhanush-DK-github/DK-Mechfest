var countDownDate = new Date("Oct 11, 2023 00:00:00").getTime();

var x = setInterval(function(){
    var now = new Date().getTime();
    var distance = countDownDate - now;

    var days = Math.floor(distance / (1000 * 60 * 60 * 24));
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / (1000));

    document.getElementById("days").innerHTML = days;
    document.getElementById("hours").innerHTML = hours;
    document.getElementById("minutes").innerHTML = minutes;
    document.getElementById("seconds").innerHTML = seconds;

    if(distance<0){
        clearInterval(x);
        document.getElementById("days").innerHTML = "00";
        document.getElementById("hours").innerHTML = "00";
        document.getElementById("minutes").innerHTML = "00";
        document.getElementById("seconds").innerHTML = "00";
    }

}, 1000);


// typed.js
                        
const typed = new Typed('.multiple-text', {
    strings: ['Registration closes on 9th Oct', 'FUEL will be held on 11th Oct', 'SHACKLES will be held on 12th Oct', 'Workshop will be held on 13th Oct'],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000,
    loop: true
});

ScrollReveal({ 
    reset: true,
    distance: '25px',
    duration: '2000',
    delay:'200',
});

ScrollReveal().reveal('.header-left-content, .mechfest-countDown-title, .mechsso-theme-title, .suggestion_form', {origin: 'top'});
ScrollReveal().reveal('.mechfest-logo, .mechfest-countDown-timer, .mechfest-brief-content, .mechsso-theme-content, .map-section', {origin: 'bottom'});
// ScrollReveal().reveal('', {origin: 'left'});
// ScrollReveal().reveal(' , .mechsso-theme-content h4,  h5', {origin: 'right'});


