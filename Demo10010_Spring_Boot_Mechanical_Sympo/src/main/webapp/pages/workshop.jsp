<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DK MechFest - WORKSHOP</title>
    <link rel="stylesheet" href="../CSS/HomeStyle.css">
    <link rel="stylesheet" href="../CSS/AboutStyle.css">
    <link rel="stylesheet" href="../CSS/EventsStyle.css">
    <link rel="stylesheet" href="../CSS/WorkshopStyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto Slab|Roboto|Roboto Serif|Roboto Condensed">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
 
    <style>
		@media (max-width: 450px){
		    #toaster{
		        width:100%;
		    }
		 }
	</style>
</head>
<body>
	<div class="position-fixed top-0 end-0 p-5 mt-4" id="toaster" style="z-index: 100;">
	        <div id="toastElement" class="toast align-items-center text-center text-bg-success border-0" role="alert" data-bs-autohide="false" aria-live="assertive" aria-atomic="true">
	            <div class="d-flex">
	              <div class="toast-body">
	                
	              </div>
	              <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
	            </div>
	        </div>
    </div>
    <header id="workshop-banner" class="banners">
        <div class="navbar navbar-expand-lg fixed-top navbar-dark">
                <div class="container">
                    <a href="home" class="navbar-brand mb-0" id="title"><span>MECH</span>ASSO</a>

                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#myNavBar">
                        <span><i class='bx bx-menu' id="menu-icon"></i></span>
                        <!-- <span class="navbar-toggler-icon"></span> -->
                    </button>

                    <div class="collapse navbar-collapse" id="myNavBar">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="home" class="nav-link">Home</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="about" class="nav-link">About</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="events" class="nav-link">Events</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="workshop" class="nav-link active">Workshop</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="contact" class="nav-link">Contact</a></li>
                            <li class="nav-item ms-lg-2 mt-3 mt-lg-0"><a href="register"><button class="btn" id="navRegisterButton">Register</button></a></li>
                        </ul>
                    </div>
                </div>
        </div>

        <div class="workshop-header pb-5 header_contents" id="workshop_header_contents">
            <div class="container pb-4">
                <div class="header-title" id="workshop-header-title">
                <div class="row p-2 align-items-center justify-content-center">
                    <div class="col-10 text-center">
                        <h1><span>WORKSHOP</span></h1>
                    </div>
                </div>
                </div>
                
                <div class="header-tabs" id="workshop-header-tabs">
                <div class="row align-items-center text-center justify-content-center">
                    <div class="col-12">
                        <nav class="nav nav-justified justify-content-evenly justify-content-md-around d-flex header-nav-tabs" id="header-nav-tabs">
                            <div class="mt-5">
                                <h3><a class="nav-link header-nav-tab-link" href="#nav-ev" id="ev-tab" role="button">ELECTRIC VEHICLE</a></h3>
                            
                            </div>
                            <div class="mt-5">
                                
                                <h3><a class="nav-link header-nav-tab-link" href="#nav-benz" id="benz-tab">MERCEDES BENZ DIAGNOSIS</a></h3>

                            </div>
                        </nav>
                    </div>
                </div>
                <div class="row align-items-center text-center justify-content-center">
                    <div class="col-12">
                        <div class="mt-5">
                            <span style="letter-spacing: 0.08rem;"><i><b>Any College Students can participate in any workshop</b></i></span>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </header>

    <section>
        
        <div class="container p-5 text-start">
            <div id="workshop-contents" class="section-contents">
                <div class="row p-5 pb-4 align-items-center justify-content-center">
                    <div class="col mt-3">
                        <nav class="nav nav-tabs nav-justified justify-content-md-center" id="section-navs" role="tablist">    
                            <button class="nav-link active section-tab" id="section-ev-tab" data-bs-toggle="tab" data-bs-target="#nav-ev" type="button" role="tab">Electric Vehicle</button>
                            
                            <button class="nav-link section-tab" id="section-benz-tab" data-bs-toggle="tab" data-bs-target="#nav-benz" type="button" role="tab">Mercedes Benz Diagnosis</button>
                        </nav>
                    </div>

                    <div class="tab-content mt-2" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-ev" role="tabpanel" tabindex="0">
                            
                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center tab-main-content" id="evMain">
                                <div class="col">

                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <h1>ELECTRIC VEHICLE</h1>
                                        </div>
                                    </div>

                                    <div class="row mt-4 text-start">
                                        <div class="col-12">
                                            <p><span><b><i>Electric Vehicle</i></b></span> workshop is conducted by our college students who have participated in <mark>Asia's Biggest 6<sup>th</sup> Electric Solar Vehicle Championship <b>(ESVC)</b></mark> conducted by <span><b>ISIE</b></span>.</p>
                                            <p>They have ranked 4<sup>th</sup> place at National Level and won the <span><b>Runner Up</b></span> in <b>Endurance Test</b></p>
                                            <p class="text-center"><span>**<b>Any College Students can participate.</b>**</span></p>
                                        </div>
                                    </div>

                                    <div class="row mt-2 text-center announcment-text">
                                        <div class="col-12">
                                            <p><span>**<b>4 Members per Team</b>**</span></p>
                                            <p><span>**<b>Each Member should pay Rs.450 for registration.</b>**</span></p>
                                            <p><span>**<b>Accomodation & Lunch will be provided.</b>**</span></p>
                                        </div>
                                    </div>

                                    <div class="row mt-1 text-start">
                                        <div class="col-12 col-sm-6">
                                            <p>It will be occured on <span><b>Oct 13, 2023.</b></span></p>
                                        </div>
                                        <div class="col-12 col-sm-6 text-sm-end">
                                            <p>Registration closes on <span><b>Oct 9, 2023.</b></span></p>
                                           
                                        </div>
                                    </div>

                                    <div class="evPoster">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <img src="../CSS/images/workshop-poster.jpg" alt="EV Poster Image" width="100%">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-5 text-start">
                                        <div class="col-12">
                                            <p>An <span><b><i>Electric Vehicle</i></b></span> is also called as an EV, uses one or more <span><b>electric motors</b></span> or <span><b>traction motors</b></span> for propulsion. An electirc vehicle may be powered through a collector system by electricity from off-vehicle sources, or may be self-contained with a <span><b>battery, solar panels </b></span> or an <span><b>electric generator </b></span>to convert fuel to electricity. EV's include, but re not limited to, road and rail vehicles, surface and underwater vessels, <span><b>electric aircraft</b></span> & <span><b>electric spacecraft</b></span>.</p>
                                            <p>Electric vehicles are expected to increase from 2% of global share in 2016 to 22% in 2030</p>
                                        </div>
                                    </div>

                                    <div class="row mt-4 text-center align-items-center justify-content-center">
                                        <div class="col-12">
                                            <a href="/workshop/Electric_Vehicle/register"><button class="btn" id="eachEventRegisterButton">Register</button></a>
                                        </div>
                                    </div>

                                    <div class="row mt-4">
                                        <div class="col-12">
                                            <img src="../CSS/images/EV_3.jpg" alt="Ev Image" width="100%">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="nav-benz" role="tabpanel" tabindex="0">

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center" id="benzMain">
                                <div class="col">

                                    <div class="row mt-3">
                                        <div class="col-12">
                                            <h1>MERCEDES BENZ DIAGNOSIS</h1>
                                        </div>
                                    </div>

                                    <div class="row mt-4 text-start">
                                        <div class="col-12">
                                            <p><span><b><i>MERCEDES BENZ DIAGNOSIS</i></b></span>  workshop is conducted by a reputed institution <span><b>KC Edustation</b></span> where the trainers are experienced in Mercedes Engine and they are the working professions of Mercedes Benz.</p>
                                            <p><span><b>National Level Certification</b></span> will be provided from <b>KC Edustation</b> in association with CIT, Bombay.</p>
                                            <p>Topics which will be covered in this workshop are <span>Vehicle Dynamics, Chassis Design, Suspension Unit, Steering System, Braking Unit, Fuel Supply System, Demonstration of Engine Parts</span>.</p>
                                            <p class="text-center"><span>**<b>Any College Students can participate.</b>**</span></p>
                                        </div>
                                    </div>

                                    <div class="row mt-2 text-center announcment-text">
                                        <div class="col-12">
                                            <p><span>**<b>5 Members per Team & Bring 1 Laptop</b>**</span></p>
                                            <p><span>**<b>Each Member should pay Rs.900 for registration.</b>**</span></p>
                                            <p><span>**<b>Accomodation & Lunch will be provided.</b>**</span></p>
                                        </div>
                                    </div>

                                    <div class="row mt-1 text-start">
                                        <div class="col-12 col-sm-6">
                                            <p>It will be occured on <span><b>Oct 13, 2023.</b></span></p>
                                        </div>
                                        <div class="col-12 col-sm-6 text-sm-end">
                                            <p>Registration closes on <span><b>Oct 9, 2023.</b></span></p>
                                           
                                        </div>
                                    </div>

                                    <div class="evPoster">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <img src="../CSS/images/Mercedes Benz Workshop.jpg" alt="Benz Poster Image" width="100%">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row mt-5 text-start">
                                        <div class="col-12">
                                            <p>The <span><b><i>Mercedes-Benz</i></b></span>  has developed multi-concept cars with alternative propulsion, such as hybrid-electric, fully electric, and fuel-cell powertrains. At the 2007 Frankfurt motor show, Mercedes-Benz showed seven hybrid models, including the F700 concept car, powered by a hybrid-electric drivetrain featuring the DiesOtto engine. In 2009, Mercedes-Benz displayed three BlueZERO concepts at the North American International Auto Show. Each car features a different powertrain - battery-electric, fuel-cell electric, and gasoline-electric hybrid. In the same year, Mercedes also showed the Vision S500 PHEV concept with a 19 miles (31 km) all-electric range and CO2 emissions of 74 grams/km in the New European Driving Cycle.</p>
                                            <p>In May 2017, Mercedes partnered with Vivint Solar to develop a solar-energy home storage battery.</p>
                                            <p>In February 2018, it was announced that Mercedes cabin air filters earned the Asthma and Allergy Friendly Certification.</p>
                                        </div>
                                    </div>

                                    <div class="row mt-4 text-center align-items-center justify-content-center">
                                        <div class="col-12">
                                            <a href="/workshop/Mercedes_Engine_Diagnosis/register"><button class="btn" id="eachEventRegisterButton">Register</button></a>
                                        </div>
                                    </div>

                                    <div class="row mt-5">
                                        <div class="col-12">
                                            <img src="../CSS/images/benz_2.jpg" alt="Benz Image" width="100%">
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>

    <footer>
        <div class="container pt-5 pb-5">
            <div class="row align-items-center justify-content-between">
                <div class="col-sm-5">
                    <div class="card suggestion_form" id="suggestion-form">
                        <div class="card-header" id="suggestion-form-title"><span>Suggestion Box</span></div>
                        <div class="card-body">
                            <form:form action="/workshop/sendSuggestion" method="post" autocomplete="off" id="suggestion_form_label_input" onsubmit="return validateSuggestionForm(this)" novalidate="true" modelAttribute="suggestion">
                                <div class="mb-3">
                                    <label class="form-label" for="fullName">Full Name <span class="text-danger">*</span></label>
                                    <form:input class="form-control" type="text" id="fullName" name="name" placeholder="Enter your name" pattern="^(?!\.)(?!.*\.$)(?!.*\.\.)([a-zA-Z.]+([\s][a-zA-Z.]+)*){2,}" required="required" path="${suggestion.name}"/>
                                    <div class="valid-feedback">Valid Name</div>
                                    <div class="invalid-feedback">Invalid Name</div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="mobile">Mobile No. <span class="text-danger">*</span></label>
                                    <input class="form-control" type="tel" id="mobile" name="mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" required="required" path="${suggestion.mobileNo}"/>
                                    <div class="valid-feedback">Valid Mobile No.</div>
                                    <div class="invalid-feedback">Invalid Mobile No.</div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="email">E-Mail Address <span class="text-danger">*</span></label>
                                    <form:input class="form-control" type="email" id="email" name="emailId" placeholder="Enter your Gmail address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" required="required" path="${suggestion.emailId}"/>
                                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="suggestion">Message <span class="text-danger">*</span></label>
                                    <form:textarea class="form-control" name="message" id="suggestion" rows="5" placeholder="Enter your message" required="required" path="${suggestion.message}"></form:textarea>
                                    <div class="valid-feedback">Thanks for your Suggestion</div>
                                    <div class="invalid-feedback">Enter your Suggestion</div>
                                </div>
                                <div class="mb-3 mt-5">
                                    <button type="submit" class="btn" id="suggestionSubmitButton">Submit</button>
                                </div>
                            </form:form>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="d-flex justify-content-center mt-5 mt-md-0 map-section">
                        <iframe id = "map" width="450" height="450" id="gmap_canvas" src="https://maps.google.com/maps?q=ACGCET,%20Karaikudi&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script>
        const navEl=  document.querySelector('.navbar');

        window.onload = function(){
            document.getElementById("suggestion_form_label_input").classList.remove("was-validated");
            scrollCheck();
        };

        window.addEventListener('scroll', () => {
            var scrolledY = window.scrollY;
            localStorage.setItem("scrolledY", scrolledY);
            scrollCheck();
        });

        function scrollCheck(){
            var scrolledY = localStorage.getItem("scrolledY");
            if(scrolledY >=  56){
                navEl.classList.add('navbar-scrolled');
            }else{
                navEl.classList.remove('navbar-scrolled');
            }
        }
    </script>

    <script>
        let menuIcon = document.querySelector('#menu-icon');
        let navbar_toggler = document.querySelector('.navbar-toggler');
        let navbar = document.querySelector('.navbar');
        let navbar_show = document.querySelector('#myNavBar');
        let navigation_bar = document.querySelector('#navigation-bar');

        navbar_toggler.onclick = () =>{
            menuIcon.classList.toggle('bx-x');
            navbar.classList.toggle('navbar-background');
        };

        $(document).ready(function () {
            $(document).click(function (event) {
                var clickover = $(event.target);
                var _opened = $(".navbar-collapse").hasClass("show");
                if (_opened === true && !clickover.hasClass("navbar-toggler")) {
                    $(".navbar-toggler").click();
                }
            });
        });
    </script>

    <script>
        function validateSuggestionForm(form){

            if(form.checkValidity()){
                return true;
            }

            form.classList.add("was-validated");
            return false;
        }
    </script>
    
    	<script>
	
    window.onload = function(){
    	
    	var msg = "${message}";
    	let toastElement = document.getElementById("toastElement");
    	
    	if(msg.includes("Successfully")){
    		toastElement.classList.add("text-bg-success");
    		toastElement.classList.remove("text-bg-warning");
    		toastElement.classList.remove("text-bg-danger");
    		
        	toastElement.querySelector(".toast-body").innerHTML=msg;
        	if(!(msg.includes("Suggestion"))){
        		toastElement.querySelector(".toast-body").innerHTML+="<br>Mail will be sent shortly.";	
        	}
        	let toast =  new bootstrap.Toast(toastElement);

            toast.show();
    	}
    	else if(msg.includes("Something went wrong")){
    		toastElement.classList.add("text-bg-danger");
    		toastElement.classList.remove("text-bg-success");
    		toastElement.classList.remove("text-bg-warning");
    		
        	toastElement.querySelector(".toast-body").innerHTML=msg;
        	let toast =  new bootstrap.Toast(toastElement);

            toast.show();
    	}
    	else if(msg.includes("already registered")){
    		toastElement.classList.add("text-bg-warning");
    		toastElement.classList.remove("text-bg-success");
    		toastElement.classList.remove("text-bg-danger");
    		
        	toastElement.querySelector(".toast-body").innerHTML=msg;
        	let toast =  new bootstrap.Toast(toastElement);

            toast.show();
    	}

    }
    </script>

    <script src="https://unpkg.com/typed.js@2.0.16/dist/typed.umd.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>


    <script type="text/Javascript" src="../Javascript/EventScript.js"></script>
</body>
</html>