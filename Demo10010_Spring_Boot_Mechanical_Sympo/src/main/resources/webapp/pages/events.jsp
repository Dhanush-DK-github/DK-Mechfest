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
    <title>DK MechFest - EVENTS</title>
    <link rel="stylesheet" href="../CSS/HomeStyle.css">
    <link rel="stylesheet" href="../CSS/AboutStyle.css">
    <link rel="stylesheet" href="../CSS/EventsStyle.css">
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

    <header id="events-banner" class="banners">
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
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="events" class="nav-link active">Events</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="workshop" class="nav-link">Workshop</a></li>
                            <li class="nav-item me-3 mb-2 mb-lg-0"><a href="contact" class="nav-link">Contact</a></li>
                            <li class="nav-item ms-lg-2 mt-3 mt-lg-0"><a href="register"><button class="btn" id="navRegisterButton">Register</button></a></li>
                        </ul>
                    </div>
                </div>
        </div>

        <div class="events-header pb-5 header_contents" id="events_header_contents">
            <div class="container pb-4">
                <div class="header-title" id="events-header-title">
                <div class="row p-2 align-items-center justify-content-center">
                    <div class="col-10 text-center">
                        <h1><span>EVENTS</span></h1>
                    </div>
                </div>
                </div>
                
                <div class="header-tabs" id="events-header-tabs">
                <div class="row align-items-center text-center justify-content-center">
                    <div class="col-12">
                    <nav class="nav nav-justified justify-content-evenly justify-content-md-around d-flex header-nav-tabs" id="header-nav-tabs">
                        <div class="mt-5 dropdown"><h3>
                            
                            <a class="nav-link header-nav-tab-link" id="fuel-tab" role="button">FUEL <span>(Intra) </span><i class="fa fa-caret-down header-nav-tab-dropdown" aria-hidden="true" id="fuel-tab-dropdown"></i></a>

                            </h3>
                            <ul class="dropdown-menu" data-popper-placement="bottom-start" id="fuel-tab-dropdown-menu">
                                <li><a class="dropdown-item" href="events#Fuel-PPT" id="Fuel-PPT-item">Paper Presentation</a></li>
                                
                                <li><a class="dropdown-item" href="events#Fuel-CAD" id="Fuel-CAD-item">CAD Modelling</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Quiz" id="Fuel-Quiz-item">Inquizitive</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Welding" id="Fuel-Welding-item">Welding</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-RC_Car" id="Fuel-RC_Car-item">RC Car</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-AquaFly" id="Fuel-AquaFly-item">Water Rocket</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Casting" id="Fuel-Casting-item">Foundry</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Assemble_Dismantle" id="Fuel-Assemble_Dismantle-item">Assemble & Dismantle</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Scrap_Master" id="Fuel-Scrap_Master-item">Scrap Master</a></li>
                                <li><a class="dropdown-item" href="events#Fuel-Flat_boat" id="Fuel-EG-item">Flat Boat</a></li>
                            </ul>

                            <div class="mt-4">
                                <span><i>Only our college students can participate.</i></span>
                            </div>
                        
                        </div>
                        <div class="mt-5">
                            
                            <h3><a class="nav-link header-nav-tab-link" id="shackles-tab">SHACKLES <span>(Inter) </span><i class="fa fa-caret-down header-nav-tab-dropdown" aria-hidden="true" id="shackles-tab-dropdown"></i></a>
                                
                            </h3>
                            <ul class="dropdown-menu" data-popper-placement="bottom-start" id="shackles-tab-dropdown-menu">

                                <li><a class="dropdown-item" href="events#Shackles-PPT" id="Shackles-PPT-item">Paper Presentation</a></li>
                                
                                <li><a class="dropdown-item" href="events#Shackles-CAD" id="Shackles-CAD-item">CAD Modelling</a></li>
                                <li><a class="dropdown-item" href="events#Shackles-Quiz" id="Shackles-Quiz-item">Inquizitive</a></li>
                                <li><a class="dropdown-item" href="events#Shackles-Welding" id="Shackles-Welding-item">Welding</a></li>
                                
                                <li><a class="dropdown-item" href="events#Shackles-AquaFly" id="Shackles-AquaFly-item">Water Rocket</a></li>
                                <li><a class="dropdown-item" href="events#Shackles-Casting" id="Shackles-Casting-item">Foundry</a></li>
                                <li><a class="dropdown-item" href="events#Shackles-Assemble_Dismantle" id="Shackles-Assemble_Dismantle-item">Assemble & Dismantle</a></li>

                            </ul>
                            <div class="mt-4">
                                <span><i>Other college students can participate.</i></span>
                            </div>
                        </div>
                    </nav>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </header>

    <section>
        
        <div class="container p-5 text-start">
            <div id="events-contents" class="section-contents">
                <div class="row p-5 pb-4 align-items-center justify-content-center">
                    <div class="col mt-3">
                        <nav class="nav nav-tabs nav-justified justify-content-md-center" id="section-navs" role="tablist">    
                            <button class="nav-link active section-tab" id="section-fuel-tab" data-bs-toggle="tab" data-bs-target="#nav-fuel" type="button" role="tab">FUEL</button>
                            
                            <button class="nav-link section-tab" id="section-shackles-tab" data-bs-toggle="tab" data-bs-target="#nav-shackles" type="button" role="tab">SHACKLES</button>
                        </nav>
                    </div>

                    <div class="tab-content mt-2" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="nav-fuel" role="tabpanel" tabindex="0">
                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center tab-main-content" id="fuelMain">
                                <div class="col">
                                    <div class="fuelContent">
                                        <div class="row mt-3">
                                            <div class="col-12">
                                                <h1>FUEL</h1>
                                            </div>
                                        </div>
                                        <div class="row mt-4 text-start">
                                            <div class="col-12">
                                                <p><span><b><i>Fuel</i></b></span> is an Intra Level Technical Symposium, where <mark>only our college students can be participated.</mark></p>
                                                <p class="text-center announcment-text"><span>**<b>Students can participate only in 3 events.</b>**</span></p>
                                            </div>
                                        </div>
                                        <div class="row mt-1 text-start">
                                            <div class="col-12 col-sm-6">
                                                <p>It will be occured on <span><b>Oct 11, 2023.</b></span></p>
                                            </div>
                                            <div class="col-12 col-sm-6 text-sm-end">
                                                <p>Registration closes on <span><b>Oct 9, 2023.</b></span></p>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="fuelPoster">
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <img src="../CSS/images/Fuel_Poster.jpeg" alt="Fuel Poster Image" width="100%">
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>
                            
                            <hr>

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center tab-events-content" id="fuelEvents">
                                <div class="col">
                                    <div class="EventTitle">
                                        <div class="row">
                                            <div class="col-12">
                                                <h1>EVENTS</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="eventsList">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <div class="row row-cols-1 row-cols-md-3 g-4 text-start">
                                                    <div class="col mb-4">
                                                      <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Paper_Presentation';" style="cursor: pointer;" id="Fuel-PPT">
                                                        <div class="card-header p-0">
                                                            <img src="../CSS/images/EventsImages/PPT_image_1.jpg" class="card-img-top event-images" alt="PPT Image" width="100%">
                                                        </div>
                                                        <div class="card-body">
                                                          <h4 class="card-title">Paper Presentation</h4>
                                                          <p class="card-subtitle text-muted mb-2">MECH TEDX</p>
                                                          <span class="badge bg-success mb-2">Group Event</span>
                                                          <span class="badge bg-primary mb-2">Participants: Max-2</span>
                                                          <p class="card-text mt-2">All you need to do is to fuel your brain to stimulate the ideas that never existed.</p>
                                                          <div class="mt-4"><a href="./events/Fuel/Paper_Presentation"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                          </button></a></div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/CAD_Modelling';" style="cursor: pointer;" id="Fuel-CAD">
                                                          <div class="card-header p-0">
                                                            <img src="../CSS/images/EventsImages/CAD_image.jpg" class="card-img-top event-images" alt="CAD Image" width="100%">
                                                          </div>
                                                          <div class="card-body">
                                                            <h4 class="card-title">CAD Modelling</h4>
                                                            <p class="card-subtitle text-muted mb-2">PRO-E</p>
                                                            <span class="badge bg-success mb-2">Individual Event</span>
                                                            <span class="badge bg-primary mb-2">Participant: 1</span>
                                                            <p class="card-text mt-2">It allows the students to display their technical drawaing skills via PRO-E.</p>
                                                            <div class="mt-4"><a href="./events/Fuel/CAD_Modelling"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                            </button></a></div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Inquizitive';" style="cursor: pointer;" id="Fuel-Quiz">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/quiz_image_2.jpg" class="card-img-top event-images" alt="Quiz Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Inquizitive</h4>
                                                              <p class="card-subtitle text-muted mb-2">QUIZ / MIND SPORT</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 2</span>
                                                              <p class="card-text mt-2">It is a mind sport in which players attempt to answer questions correctly on one or several specific topics.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Inquizitive"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Welding';" style="cursor: pointer;" id="Fuel-Welding">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Welding_image_3.jpg" class="card-img-top event-images" alt="Welding Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Welding</h4>
                                                              <p class="card-subtitle text-muted mb-2">MR.SPARK</p>
                                                              <span class="badge bg-success mb-2">Individual Event</span>
                                                              <span class="badge bg-primary mb-2">Participant: 1</span>
                                                              <p class="card-text mt-2">It is a fabrication process whereby two or more parts are fused together by means of heat, pressure or both forming a join as the parts cool.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Welding"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/RC_Car';" style="cursor: pointer;" id="Fuel-RC_Car">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/RC_image_4.jpg" class="card-img-top event-images" alt="RC Car Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">RC Car</h4>
                                                              <p class="card-subtitle text-muted mb-2">CAR RACE</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: Min-2, Max-3</span>
                                                              <p class="card-text mt-2">Prepare a miniature model car that can be controlled from a distance using a specialized transmitter or remote.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/RC_Car"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Water_Rocket';" style="cursor: pointer;" id="Fuel-AquaFly">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Water_Rocket_image_1.png" class="card-img-top event-images" alt="Water Rocket Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Water Rocket</h4>
                                                              <p class="card-subtitle text-muted mb-2">AQUAFLY</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: Min-2, Max-3</span>
                                                              <p class="card-text mt-2">Build a water rocket designed to fly the greatest distance.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Water_Rocket"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Casting';" style="cursor: pointer;" id="Fuel-Casting">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/casting_image_3.jpg" class="card-img-top event-images" alt="Foundry Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Casting</h4>
                                                              <p class="card-subtitle text-muted mb-2">FOUNDRY</p>
                                                              <span class="badge bg-success mb-2">Individual Event</span>
                                                              <span class="badge bg-primary mb-2">Participant: 1</span>
                                                              <p class="card-text mt-2">Sand casting, Create a mould, which is made of sand particles held together with an inorganic binding agent.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Casting"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Assemble_Dismantle';" style="cursor: pointer;" id="Fuel-Assemble_Dismantle">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Assemble_dismantle_image.png" class="card-img-top event-images" alt="Assemble & Dismantle Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Assemble & Dismantle</h4>
                                                              <p class="card-subtitle text-muted mb-2">YET TO BE ENGINEERED</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 2</span>
                                                              <p class="card-text mt-2">Skill required to confirm competency in the dismantling and assembling of Mechanical Equipments.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Assemble_Dismantle"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Scrap_Master';" style="cursor: pointer;" id="Fuel-Scrap_Master">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Scrap_master_image.jpg" class="card-img-top event-images" alt="Scrap Master Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Scrap Master</h4>
                                                              <p class="card-subtitle text-muted mb-2">WASTE BUT NOT LOST</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 3</span>
                                                              <p class="card-text mt-2">Built any kind of model or structure by using only scrap(waste material).</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Scrap_Master"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Fuel/Flat_Boat';" style="cursor: pointer;" id="Fuel-Flat_boat">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Flat_Boat_1.jpg" class="card-img-top event-images" alt="Flat boat Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Flat Boat</h4>
                                                              <p class="card-subtitle text-muted mb-2">Boat Race</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 3</span>
                                                              <p class="card-text mt-2">Prepare a miniature model boat that can be controlled from a distance using a specialized transmitter or remote.</p>
                                                              <div class="mt-4"><a href="./events/Fuel/Flat_Boat"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
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

                        <div class="tab-pane fade" id="nav-shackles" role="tabpanel" tabindex="0">

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center" id="shacklesMain">
                                <div class="col">
                                    <div class="shacklesContent">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <h1>SHACKLES</h1>
                                            </div>
                                        </div>
                                        <div class="row mt-4 text-start">
                                            <div class="col-12">
                                                <p><span><b><i>Shackles</i></b></span> is an Inter Level Technical Symposium, where <mark>other college students can be participated.</mark></p>
                                                <p class="text-center announcment-text"><span>**<b>Students can participate in number of events by paying just Rs.150</b>**</span></p>
                                                <p class="text-center announcment-text"><span>**<b>Each Student should pay Rs.150 for registration.</b>**</span></p>
                                                <p class="text-center announcment-text"><span>**<b>Accomodation & Lunch will be provided.</b>**</span></p>
                                            </div>
                                        </div>
                                        <div class="row mt-2 text-start">
                                            <div class="col-12 col-sm-6">
                                                <p>It will be occured on <span><b>Oct 12, 2023.</b></span></p>
                                            </div>
                                            <div class="col-12 col-sm-6 text-sm-end">
                                                <p>Registration closes on <span><b>Oct 9, 2023.</b></span></p>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shacklesPoster">
                                    <div class="row mt-2">
                                        <div class="col-12">
                                            <img src="../CSS/images/shackles-poster.jpg" alt="Shackles Poster Image" width="100%">
                                        </div>
                                    </div>
                                    </div>
                                </div>
                            </div>

                            <hr>

                            <div class="row pt-4 pb-4 text-center align-items-center justify-content-center tab-events-content" id="shacklesEvents">
                                <div class="col">
                                    <div class="EventTitle">
                                        <div class="row">
                                            <div class="col-12">
                                                <h1>EVENTS</h1>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="eventsList">
                                        <div class="row mt-4">
                                            <div class="col-12">
                                                <div class="row row-cols-1 row-cols-md-3 g-4 text-start">
                                                    <div class="col mb-4">
                                                      <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Paper_Presentation';" style="cursor: pointer;" id="Shackles-PPT">
                                                        <div class="card-header p-0">
                                                            <img src="../CSS/images/EventsImages/PPT_image_1.jpg" class="card-img-top event-images" alt="PPT Image" width="100%">
                                                        </div>
                                                        <div class="card-body">
                                                          <h4 class="card-title">Paper Presentation</h4>
                                                          <p class="card-subtitle text-muted mb-2">MECH TEDX</p>
                                                          <span class="badge bg-success mb-2">Group Event</span>
                                                          <span class="badge bg-primary mb-2">Participants: Max-2</span>
                                                          <p class="card-text mt-2">All you need to do is to fuel your brain to stimulate the ideas that never existed.</p>
                                                          <div class="mt-4"><a href="./events/Shackles/Paper_Presentation"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                          </button></a></div>
                                                        </div>
                                                      </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/CAD_Modelling';" style="cursor: pointer;" id="Shackles-CAD">
                                                          <div class="card-header p-0">
                                                            <img src="../CSS/images/EventsImages/CAD_image.jpg" class="card-img-top event-images" alt="CAD Image" width="100%">
                                                          </div>
                                                          <div class="card-body">
                                                            <h4 class="card-title">CAD Modelling</h4>
                                                            <p class="card-subtitle text-muted mb-2">PRO-E</p>
                                                            <span class="badge bg-success mb-2">Individual Event</span>
                                                            <span class="badge bg-primary mb-2">Participant: 1</span>
                                                            <p class="card-text mt-2">It allows the students to display their technical drawaing skills via PRO-E.</p>
                                                            <div class="mt-4"><a href="./events/Shackles/CAD_Modelling"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                            </button></a></div>
                                                          </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Inquizitive';" style="cursor: pointer;" id="Shackles-Quiz">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/quiz_image_2.jpg" class="card-img-top event-images" alt="Quiz Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Inquizitive</h4>
                                                              <p class="card-subtitle text-muted mb-2">QUIZ / MIND SPORT</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 2</span>
                                                              <p class="card-text mt-2">It is a mind sport in which players attempt to answer questions correctly on one or several specific topics.</p>
                                                              <div class="mt-4"><a href="./events/Shackles/Inquizitive"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Welding';" style="cursor: pointer;" id="Shackles-Welding">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Welding_image_3.jpg" class="card-img-top event-images" alt="Welding Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Welding</h4>
                                                              <p class="card-subtitle text-muted mb-2">MR.SPARK</p>
                                                              <span class="badge bg-success mb-2">Individual Event</span>
                                                              <span class="badge bg-primary mb-2">Participant: 1</span>
                                                              <p class="card-text mt-2">It is a fabrication process whereby two or more parts are fused together by means of heat, pressure or both forming a join as the parts cool.</p>
                                                              <div class="mt-4"><a href="./events/Shackles/Welding"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Water_Rocket';" style="cursor: pointer;" id="Shackles-AquaFly">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Water_Rocket_image_1.png" class="card-img-top event-images" alt="Water Rocket Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Water Rocket</h4>
                                                              <p class="card-subtitle text-muted mb-2">AQUAFLY</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: Min-2, Max-3</span>
                                                              <p class="card-text mt-2">Build a water rocket designed to fly the greatest distance.</p>
                                                              <div class="mt-4"><a href="./events/Shackles/Water_Rocket"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Casting';" style="cursor: pointer;" id="Shackles-Casting">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/casting_image_3.jpg" class="card-img-top event-images" alt="Foundry Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Casting</h4>
                                                              <p class="card-subtitle text-muted mb-2">FOUNDRY</p>
                                                              <span class="badge bg-success mb-2">Individual Event</span>
                                                              <span class="badge bg-primary mb-2">Participant: 1</span>
                                                              <p class="card-text mt-2">Sand casting, Create a mould, which is made of sand particles held together with an inorganic binding agent.</p>
                                                              <div class="mt-4"><a href="./events/Shackles/Casting"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col mb-4">
                                                        <div class="card mb-4 mb-md-0 h-100" onclick="location.href='./events/Shackles/Assemble_Dismantle';" style="cursor: pointer;" id="Shackles-Assemble_Dismantle">
                                                            <div class="card-header p-0">
                                                              <img src="../CSS/images/EventsImages/Assemble_dismantle_image.png" class="card-img-top event-images" alt="Assemble & Dismantle Image" width="100%">
                                                            </div>
                                                            <div class="card-body">
                                                              <h4 class="card-title">Assemble & Dismantle</h4>
                                                              <p class="card-subtitle text-muted mb-2">YET TO BE ENGINEERED</p>
                                                              <span class="badge bg-success mb-2">Group Event</span>
                                                              <span class="badge bg-primary mb-2">Participants: 2</span>
                                                              <p class="card-text mt-2">Skill required to confirm competency in the dismantling and assembling of Mechanical Equipments.</p>
                                                              <div class="mt-4"><a href="./events/Shackles/Assemble_Dismantle"><button class="event-detail-button" type="button">View Details &nbsp;<i class="fa fa-external-link" aria-hidden="true"></i>
                                                              </button></a></div>
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
                            <form:form action="/events/sendSuggestion" method="post" autocomplete="off" id="suggestion_form_label_input" onsubmit="return validateSuggestionForm(this)" novalidate="true" modelAttribute="suggestion">
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