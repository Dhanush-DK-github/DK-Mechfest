const typed = new Typed('.mechfest_dates', {
    strings: ['FUEL will be celebrated on Oct 11.', 'SHACKLES will be celebrated on Oct 12.', 'Workshop will be held on Oct 13.'],
    typeSpeed: 100,
    backSpeed: 100,
    backDelay: 1000,
    loop: true
});


ScrollReveal({ 
    reset: true,
    distance: '20px',
    duration: '2000',
    delay:'200',
});

ScrollReveal().reveal('.header-title, .ourCollegeImage, .suggestion_form', {origin: 'top'});
ScrollReveal().reveal('.header-tabs, .ourCollegeContent, .map-section', {origin: 'bottom'});
ScrollReveal().reveal('.ourDepartmentTitle, .mechassoContent, .mechfestTitle', {origin: 'left'});
ScrollReveal().reveal('.ourDepartmentContent, .mechassoTitle, .mechfestContent', {origin: 'right'});
