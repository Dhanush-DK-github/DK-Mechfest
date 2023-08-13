<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DK MechFest - REGISTRATION</title>
    <link rel="stylesheet" href="../CSS/HomeStyle.css">
    <link rel="stylesheet" href="../CSS/AboutStyle.css">
    <link rel="stylesheet" href="../CSS/EventsStyle.css">
    <link rel="stylesheet" href="../CSS/RegistrationStyleMain.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto Slab|Roboto|Roboto Serif|Roboto Condensed">
    <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> -->
	
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
	
    <header id="registration-banner" class="banners">
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
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="workshop" class="nav-link">Workshop</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="contact" class="nav-link">Contact</a></li>
                            <li class="nav-item ms-lg-2 mt-3 mt-lg-0"><a href="register"><button class="btn" id="navRegisterButton" style="box-shadow: none;">Register</button></a></li>
                        </ul>
                    </div>
                </div>
        </div>
        
        <div class="position-fixed top-0 end-0 p-3" style="z-index: 5;">
	        <div id="toastElement" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
	            <div class="d-flex">
	              <div class="toast-body">
	                
	              </div>
	              <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
	            </div>
	        </div>
    	</div>

        <div class="registration-header pb-5 header_contents" id="registration_header_contents">
            <div class="container pb-4">
                <div class="header-title" id="registration-header-title">
                <div class="row p-2 align-items-center justify-content-center">
                    <div class="col-10 text-center">
                        <h1><span>REGISTRATION</span></h1>
                    </div>
                </div>
                </div>
                
                <div class="header-tabs" id="registration-header-tabs">
                    <div class="row align-items-center text-center justify-content-center">
                        <nav class="nav nav-justified justify-content-evenly justify-content-md-around d-flex header-nav-tabs" id="header-nav-tabs">
                            <div class="mt-5">
                                
                                <h3><a class="nav-link header-nav-tab-link" href="#fuelRegistration" id="fuel-tab" role="button">FUEL <span>(Intra) </span></a></h3>

                                <div class="mt-3">
                                    <span><i>Intra Level Sympo, Only our college students can participate</i></span>
                                </div>
                            
                            </div>

                            <div class="mt-5">
                                
                                <h3><a class="nav-link header-nav-tab-link" href="#shacklesRegistration" id="shackles-tab">SHACKLES <span>(Inter) </span></a></h3>

                                <div class="mt-3">
                                    <span><i>Inter Level Sympo, Other college students can participate</i></span>
                                </div>
                            </div>

                            <div class="mt-5">
                                
                                <h3><a class="nav-link header-nav-tab-link" href="#workshopRegistration" id="workshop-tab">WORKSHOP</a></h3>

                                <div class="mt-3">
                                    <span><i>Any college students can participate</i></span>
                                </div>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="section-container">
        
        <div class="container p-5 text-start">
            <div id="registration-contents" class="section-contents">
                <div class="row p-5 align-items-center justify-content-center text-start">
                    <div class="col mt-3">
                        <nav class="nav nav-tabs nav-justified justify-content-md-center" id="section-navs" role="tablist">    
                            <button class="nav-link active section-tab" id="section-fuel-tab" data-bs-toggle="tab" data-bs-target="#nav-fuel" type="button" role="tab">FUEL</button>
                            
                            <button class="nav-link section-tab" id="section-shackles-tab" data-bs-toggle="tab" data-bs-target="#nav-shackles" type="button" role="tab">SHACKLES</button>

                            <button class="nav-link section-tab" id="section-workshop-tab" data-bs-toggle="tab" data-bs-target="#nav-workshop" type="button" role="tab">WORKSHOP</button>
                        </nav>
                    </div>

                    <div class="tab-content mt-2" id="nav-tabContent">
                        <div class="tab-pane fade show active tab-contents" id="nav-fuel" role="tabpanel" tabindex="0">
                            
                            <div class="row pt-4 pb-2 text-center align-items-center justify-content-center tab-main-content" id="fuelRegistration">
                                <div class="col">
                                    <div class="main-Title" id="fuelTitle">
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <h1><span>FUEL</span> REGISTRATION</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="fuelForm">
                                        <div class="row mt-3 text-start">
                                            <div class="col-12">
                                                <form:form action="saveRegistration" method="post" class="registration-form" id="fuel-registration-form" autocomplete="off" onsubmit="return validateRegistrationForm(this)" novalidate = "true" modelAttribute="registration">

                                                    <div class="form-group input-field row align-items-center">
                                                        <label for="type" class="col-sm-4 col-form-label" style="display: none;">Type</label>
                                                        <div class="col-sm-8">
                                                            <form:input type="text" class="form-control" id="type" name = "type" value="Fuel" style="display: none;" path="${registration.type}"/>
                                                        </div>
                                                    </div>
                        
                                                    <div class="form-group input-field row mt-3 align-items-center">
                                                        <label for="fuel-event_name" class="col-sm-4 col-form-label">Event Name</label>
                                                        <div class="col-sm-8">
                                                            <form:select id="fuel-event_name" name="name" class="form-select select_name"  path="${registration.name}" oninput="declareInput()">
                                                                <form:option value="">Select Event</form:option>
                                                                <form:option value="Paper Presentation">Paper Presentation</form:option>
                                                                <form:option value="CAD Modelling">CAD Modelling</form:option>
                                                                <form:option value="Water Rocket">Water Rocket/Aquafly</form:option>
                                                                <form:option value="Inquizitive">Inquizitive</form:option>
                                                                <form:option value="Welding">Welding</form:option>
                                                                <form:option value="RC Car">RC Car</form:option>
                                                                <form:option value="Foundry">Foundry/Casting</form:option>
                                                                <form:option value="Assemble and Dismantle">Assemble and Dismantle</form:option>
                                                                <form:option value="Scrap Master">Scrap Master</form:option>
                                                                <form:option value="Flat Boat">Flat Boat</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    
                                                    <jsp:include page="Participant_Details.jsp">
                                                    <jsp:param name="students[]" value="${registration.students}" />
                                                    </jsp:include>
                                                    
                                                   
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="tab-pane fade tab-contents" id="nav-shackles" role="tabpanel" tabindex="0">

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center" id="shacklesRegistration">
                                <div class="col">
                                    <div class="main-Title" id="shacklesTitle">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <h1><span>SHACKLES</span> REGISTRATION</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="shacklesForm">
                                        <div class="row mt-3 text-start">
                                            <div class="col-12">
                                                <form:form action="saveRegistration" method="post" class="registration-form" id="shackles-registration-form" autocomplete="off" onsubmit="return validateRegistrationForm(this)" modelAttribute="registration" novalidate = "true">

                                                    <div class="form-group input-field row align-items-center">
                                                        <label for="type" class="col-sm-4 col-form-label" style="display: none;">Type</label>
                                                        <div class="col-sm-8">
                                                            <form:input type="text" class="form-control" id="type" name = "type" value="Shackles" path="${registration.type}" style="display: none;"/>
                                                        </div>
                                                    </div>
                        
                                                    <div class="form-group input-field row mt-3 align-items-center">
                                                        <label for="shackles-event_name" class="col-sm-4 col-form-label">Event Name</label>
                                                        <div class="col-sm-8">
                                                            <form:select id="shackles-event_name" name="name" class="form-select select_name"  path="${registration.name}" oninput="declareInput()">
                                                                <form:option value="">Select Event</form:option>
                                                                <form:option value="Paper Presentation">Paper Presentation</form:option>
                                                                <form:option value="CAD Modelling">CAD Modelling</form:option>
                                                                <form:option value="Water Rocket">Water Rocket/Aquafly</form:option>
                                                                <form:option value="Inquizitive">Inquizitive</form:option>
                                                                <form:option value="Welding">Welding</form:option>
                                                                <form:option value="Foundry">Foundry/Casting</form:option>
                                                                <form:option value="Assemble and Dismantle">Assemble and Dismantle</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    
                                                                                                        <jsp:include page="Participant_Details.jsp">
                                                    <jsp:param name="students[]" value="${registration.students}" />
                                                    </jsp:include>

                                                    <!-- <div class="fetch_paticipant-details"></div> -->
           
                                                </form:form>
                                            </div>
                                        </div>
                                    </div>       
                                </div>
                            </div>

                        </div>

                        <div class="tab-pane fade tab-contents" id="nav-workshop" role="tabpanel" tabindex="0">

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center" id="workshopRegistration">
                                <div class="col">
                                    <div class="main-Title" id="workshopTitle">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <h1><span>WORKSHOP</span> REGISTRATION</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="workshopForm">
                                        <div class="row mt-3 text-start">
                                            <div class="col-12">
                                                <form:form action="saveRegistration" method="post" class="registration-form" id="workshop-registration-form" autocomplete="off" modelAttribute="registration" onsubmit="return validateRegistrationForm(this)" novalidate = "true">

                                                    <div class="form-group input-field row align-items-center">
                                                        <label for="type" class="col-sm-4 col-form-label" style="display: none;">Type</label>
                                                        <div class="col-sm-8">
                                                            <form:input type="text" class="form-control" id="type" name = "type" path="${registration.type}" value="Workshop" style="display: none;"/>
                                                        </div>
                                                    </div>
                        
                                                    <div class="form-group input-field row mt-3 align-items-center">
                                                        <label for="workshop_name" class="col-sm-4 col-form-label">Workshop Name</label>
                                                        <div class="col-sm-8">
                                                            <form:select id="workshop_name" name="name" class="form-select select_name"  path="${registration.name}" oninput="declareInput()">
                                                                <form:option value="">Select Workshop</form:option>
                                                                <form:option value="Electric Vehicle">Electric Vehicle</form:option>
                                                                <form:option value="Mercedes Engine Diagnosis">Mercedes Engine Diagnosis</form:option>  
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                
                                                <jsp:include page="Participant_Details.jsp">
                                                    <jsp:param name="students[]" value="${registration.students}" />
                                                    </jsp:include>   
                        
                                                   <!-- <div class="fetch_paticipant-details"></div> -->
                                                   

                                                </form:form>
                                            </div>
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
                            <form:form action="/register/sendSuggestion" method="post" autocomplete="off" id="suggestion_form_label_input" onsubmit="return validateSuggestionForm(this)" novalidate="true" modelAttribute="suggestion">
                                <div class="mb-3">
                                    <label class="form-label" for="fullName">Full Name <span class="text-danger">*</span></label>
                                    <input class="form-control" type="text" id="fullName" name="fName" placeholder="Enter your name" pattern="[A-Za-z]+" required>
                                    <div class="valid-feedback">Valid Name</div>
                                    <div class="invalid-feedback">Invalid Name</div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="mobile">Mobile No. <span class="text-danger">*</span></label>
                                    <input class="form-control" type="tel" id="mobile" name="mobileNo" pattern="[0-9]{10}" placeholder="10 digit Mobile number" required>
                                    <div class="valid-feedback">Valid Mobile No.</div>
                                    <div class="invalid-feedback">Invalid Mobile No.</div>
                                </div>
                                <div class="mb-3" id="email-input-group">
                                    <label class="form-label" for="email">E-Mail Address <span class="text-danger">*</span></label>
                                    <input class="form-control" type="email" id="email" name="emailId" placeholder="Enter your Gmail address" pattern="^(?!\.)(?!.*\.$)(?!.*?\.\.)[a-z0-9]+[a-z.0-9]*[a-z]+[a-z.0-9]*[a-z0-9]+@gmail\.com$" required>
                                    <div class="valid-feedback" id="valid_msg">Valid Email</div>
                                    <div class="invalid-feedback" id="invalid_msg">Invalid Email</div>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label" for="suggestion">Message <span class="text-danger">*</span></label>
                                    <textarea class="form-control" name="message" id="suggestion" rows="5" placeholder="Enter your message" required></textarea>
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
    
  <%--   <c:choose>
	    <c:when test="${type == 'Fuel'}">
	        <script>
		   		document.getElementById("section-fuel-tab").click();
		   		var typeName = "${typeName}";
		   		if(typeName!=null||typeName!=""){
		   			const el = document.querySelector('#fuel-event_name');
		   			el.value = typeName;
		   			var event = document.createEvent('Event');
		   			event.initEvent('input', true, true);
		   			el.dispatchEvent(event);
		   		}
		    </script> 
	        <br />
	    </c:when>  
	    <c:when test="${type == 'Shackles'}">
	        <script>
		   		document.getElementById("section-shackles-tab").click();
		   		var typeName = "${typeName}";
		   		if(typeName!=null||typeName!=""){
		   			const el = document.getElementById("shackles-event_name");
		   			el.value = typeName;
		   			el.dispatchEvent(new Event('input'));
		   		}
		    </script> 
	        <br />
	    </c:when>
	    <c:when test="${type == 'Workshop'}">
	        <script>
		   		document.getElementById("section-workshop-tab").click();
		   		var typeName = "${typeName}";
		   		if(typeName!=null||typeName!=""){
		   			const el = document.getElementById("workshop_name");
		   			el.value = typeName;
		   			el.dispatchEvent(new Event('input'));
		   		}
		    </script> 
	        <br />
	    </c:when>    
	</c:choose> --%>


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
        function validateRegistrationForm(form){
        	
			if(!validateForm(form)){
				return false;
			}
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
    
        <script>
    window.onload = function(){
    	var type= "${type}";
    	console.log("Hiello");
    	console.log(type)
    	if(type.includes("Fuel")){
    		document.getElementById("section-fuel-tab").click();
	   		var typeName = "${typeName}";
	   		if(typeName!=null||typeName!=""){
	   			var el = document.querySelector('#fuel-event_name');
	   			el.value = typeName;
	   			var event = document.createEvent('Event');
	   			event.initEvent('input', true, true);
	   			el.dispatchEvent(event);
	   		}
    	}
    	else if(type.includes("Shackles")){
    		document.getElementById("section-shackles-tab").click();
	   		var typeName = "${typeName}";
	   		if(typeName!=null||typeName!=""){
	   			var el = document.querySelector('#shackles-event_name');
	   			el.value = typeName;
	   			var event = document.createEvent('Event');
	   			event.initEvent('input', true, true);
	   			el.dispatchEvent(event);
	   		}
    	}
    	else if(type.includes("Workshop")){
    		document.getElementById("section-workshop-tab").click();
	   		var typeName = "${typeName}";
	   		if(typeName!=null||typeName!=""){
	   			var el = document.querySelector('#workshop_name');
	   			el.value = typeName;
	   			var event = document.createEvent('Event');
	   			event.initEvent('input', true, true);
	   			el.dispatchEvent(event);
	   		}
    	}
    	
    }
    </script>
    
<!--     <script>
    window.onload = function(){
    	console.log("HII in toastr");
    	var msg = "${message}";
    	console.log(msg);
    	toastr.options = {
    			  "closeButton": false,
    			  "debug": false,
    			  "newestOnTop": false,
    			  "progressBar": false,
    			  "positionClass": "toast-top-right",
    			  "preventDuplicates": false,
    			  "onclick": null,
    			  "showDuration": "300",
    			  "hideDuration": "1000",
    			  "timeOut": "5000",
    			  "extendedTimeOut": "1000",
    			  "showEasing": "swing",
    			  "hideEasing": "linear",
    			  "showMethod": "fadeIn",
    			  "hideMethod": "fadeOut"
    			}
    	
    	if(msg.includes("Successfully Registered")){
    		Command: toastr["success"](msg)
    	}else if(msg.includes("already registered")){
    		Command: toastr["warning"](msg)
    	}else if(msg.includes("wrong")){
    		Command: toastr["error"](msg)
    	}
    	msg=null;
    	console.log(msg);
    }
    </script> -->


    <script src="https://unpkg.com/typed.js@2.0.16/dist/typed.umd.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>

    <script type="text/Javascript" src="../Javascript/EventScript.js"></script>
    <script type="text/Javascript" src="../Javascript/RegistrationScript.js"></script>
    <script type="text/Javascript" src="../Javascript/RegistrationValidationScript.js"></script>

    <script type="text/Javascript" src="../Javascript/CollegeListVariables.js" class="autoCompleteCollege"></script>
    <script type="text/Javascript" src="../Javascript/AutocompleteSuggestionScript.js" class="autoCompleteCollege"></script>

</body>
</html>