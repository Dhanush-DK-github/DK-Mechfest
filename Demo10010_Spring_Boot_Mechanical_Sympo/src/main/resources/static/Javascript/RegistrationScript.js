var totalParticipants= 5;
var minParticipant=1;
var minPptParticipant=1; var maxPptParticipant=2;
var minQuizParticipant=2; var maxQuizParticipant=2;
var minAquaFlyParticipant=2; var maxAquaFlyParticipant=3;
var minAssembAndDismantParticipant=2; var maxAssembAndDismantParticipant=2;
var minRcCarParticipant=2; var maxRcCarParticipant=3;
var minScrapMasterParticipant=3; var maxScrapMasterParticipant=3;
var minFlatBoatParticipant=3; var maxFlatBoatParticipant=3;
var minEvWorkshopParticipant=1; var maxEvWorkshopParticipant=4;
var minMercedesWorkshopParticipant=1; var maxMercedesWorkshopParticipant=5;

const groupEvents = ["Paper Presentation", "Inquizitive", "Water Rocket", "Assemble and Dismantle", "RC Car", "Scrap Master", "Flat Boat"];
const individualEvent = ["CAD Modelling", "Welding", "Foundry"];
const workshop = ["Electric Vehicle", "Mercedes Engine Diagnosis"];

var activeForm = document.querySelector("#fuel-registration-form");

function declareInput(){

        var selectFuelEvent = $("#fuel-event_name").val();
        var selectShacklesEvent = $("#shackles-event_name").val();
        var selectWorkshop = $("#workshop_name").val();
        
        var selectEvent="";

        if(selectFuelEvent!=""){
            activeForm = document.querySelector("#fuel-registration-form");
            selectEvent = selectFuelEvent;
        }
        else if(selectShacklesEvent!=""){
            activeForm = document.querySelector("#shackles-registration-form");
            selectEvent = selectShacklesEvent;
        }
        else if(selectWorkshop!=""){
            activeForm = document.querySelector("#workshop-registration-form");

        }
        

        if(selectEvent!=""||selectWorkshop!=""){

            activeForm.querySelector("#form-SubTitle").style.display = 'block';
            activeForm.querySelector("#participants").style.display = 'block';

            removeParticipants(activeForm);
            removeRequired(activeForm);
            removeDisabled(activeForm);
            removeInputData();
            removeCollegeReadOnly();
            removeCollegeValidationStyle();
            removeWasValidatedFromForm();
            hideFeeDetails();
            declareActiveForm(activeForm);
            activeForm.querySelector("#college input").classList.remove("fuel-college");
            activeForm.querySelector("#college input").classList.remove("shackles-college");
            activeForm.querySelector("#college input").classList.remove("workshop-college");
        
            if(groupEvents.includes(selectEvent)){

                switch (selectEvent){
                    case "Paper Presentation":
                        pptInputs(activeForm);
                        break;
                    case "Inquizitive":
                        quizInputs(activeForm);
                        break;
                    case "Water Rocket":
                        aquaFlyInputs(activeForm);
                        break;
                    case "Assemble and Dismantle":
                        assembleDismantleInputs(activeForm);
                        break;
                    case "RC Car":
                        rcCarInputs(activeForm);
                        break;
                    case "Scrap Master":
                        scrapMasterInputs(activeForm);
                        break;
                    case "Flat Boat":
                        flatBoatInputs(activeForm);
                }
            }
            else if(individualEvent.includes(selectEvent)){
                activeForm.querySelector('#participant_1').style.display = 'flex';
            }
            else if(workshop.includes(selectWorkshop)){

                switch (selectWorkshop){
                    case "Electric Vehicle":
                        evWorkshopInputs(activeForm);
                        break;
                    case "Mercedes Engine Diagnosis":
                        mercedesWorkshopInputs(activeForm);
                }
            }

            activeForm.querySelector("#college").style.display = 'flex';

            if(selectShacklesEvent!=""){
            	activeForm.querySelector("#college input").classList.add("shackles-college");
                activeForm.querySelector("#eventFeeDetails").style.display = 'flex';

            }
            if(selectFuelEvent!=""){
            	activeForm.querySelector("#college input").classList.add("fuel-college");
                document.getElementById("collegeName").value = "Alagappa Chettiar Government College of Engineering and Technology (Autonomous), Karaikudi, Sivagangai District 630004";
                document.getElementById("collegeName").setAttribute("readonly", "true");
                document.getElementById("eventFeeDetails").style.display = 'none';
            }

            if(selectWorkshop=="Electric Vehicle"){
            	activeForm.querySelector("#college input").classList.add("workshop-college");
                activeForm.querySelector("#evFeeDetails").style.display = 'flex';
            }
            else if(selectWorkshop=="Mercedes Engine Diagnosis"){
            	activeForm.querySelector("#college input").classList.add("workshop-college");
                activeForm.querySelector("#benzFeeDetails").style.display = 'flex';
            }

            activeForm.querySelector("#submitButton").style.display = 'flex';
        }

        else{
            activeForm.querySelector("#form-SubTitle").style.display = 'none';
            activeForm.querySelector("#participants").style.display = 'none';
            activeForm.querySelector("#eventFeeDetails").style.display = 'none';
            activeForm.querySelector("#evFeeDetails").style.display = 'none';
            activeForm.querySelector("#benzFeeDetails").style.display = 'none';
            activeForm.querySelector("#submitButton").style.display = 'none';
        }

};

function displayParticipant(activeForm, i){
    activeForm.querySelector("#participant_"+i).style.display = 'flex';
}

function pptInputs(activeForm){
    for (let i = minParticipant; i <= maxPptParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minPptParticipant){
            addRequired(activeForm, i);
        }
    }
}

function quizInputs(activeForm){
    for (let i = minParticipant; i <= maxQuizParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minQuizParticipant){
            addRequired(activeForm, i);
        }
    }
}

function aquaFlyInputs(activeForm){
    for (let i = minParticipant; i <= maxAquaFlyParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minAquaFlyParticipant){
            addRequired(activeForm, i);
        }
    }
}

function assembleDismantleInputs(activeForm){
    for (let i = minParticipant; i <= maxAssembAndDismantParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minAssembAndDismantParticipant){
            addRequired(activeForm, i);
        }
    }
}

function rcCarInputs(activeForm){

    for (let i = minParticipant; i <= maxRcCarParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minRcCarParticipant){
            addRequired(activeForm, i);
        }
    }
}

function scrapMasterInputs(activeForm){

    for (let i = minParticipant; i <= maxScrapMasterParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minScrapMasterParticipant){
            addRequired(activeForm, i);
        }
    }
}

function flatBoatInputs(activeForm){

    for (let i = minParticipant; i <= maxFlatBoatParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minFlatBoatParticipant){
            addRequired(activeForm, i);
        }
    }
}

function evWorkshopInputs(activeForm){
    for (let i = 1; i <= maxEvWorkshopParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minEvWorkshopParticipant){
            addRequired(activeForm, i);
        }
    }
}

function mercedesWorkshopInputs(activeForm){
    for (let i = 1; i <= maxMercedesWorkshopParticipant; i++){
        displayParticipant(activeForm, i);
        if(i<=minMercedesWorkshopParticipant){
            addRequired(activeForm, i);
        }
    }
}

function addRequired(activeForm, i){

    activeForm.querySelectorAll("#participant_"+i+" label").forEach((item) => 
    
            item.classList.remove("not_required")
        );

    activeForm.querySelectorAll("#participant_"+i+" label").forEach((item) => 
    
            item.classList.add("required")
        );

    activeForm.querySelectorAll("#participant_"+i+" input").forEach((item) => 
    
        item.setAttribute('required', '')

    ); 
    
    activeForm.querySelectorAll("#participant_"+i+" select").forEach((item) => 

        item.setAttribute('required', '')

    ); 
}

function removeParticipants(activeForm){

    activeForm.querySelectorAll(".participant").forEach((item) => 
    
        item.style.display= 'none'
    
    );

}

function removeRequired(activeForm){

    for (let i = (minParticipant+1); i <= totalParticipants; i++){

        activeForm.querySelectorAll("#participant_"+i+" label").forEach((item) => 
    
            item.classList.remove("required")
        );

        activeForm.querySelectorAll("#participant_"+i+" label").forEach((item) => 
    
            item.classList.add("not_required")
        );

        activeForm.querySelectorAll("#participant_"+i+" input").forEach((item) => 
    
            item.removeAttribute("required")
    
        ); 
        
        activeForm.querySelectorAll("#participant_"+i+" select").forEach((item) => 
    
            item.removeAttribute("required")
    
        ); 
    }
}

function removeInputData(){
    const inputs = Array.from(document.getElementsByClassName("input_text"));
            inputs.forEach(el => {
                el.value="";
            });
    const select_fields = Array.from(document.getElementsByClassName("select_text"));
            select_fields.forEach(el => {
                el.value="";
            });
}

function removeCollegeReadOnly(){
    document.getElementById("collegeName").removeAttribute("readonly");
}

function removeCollegeValidationStyle(){

    const college_inputs = Array.from(document.getElementsByClassName("collegeNameInput"));
            college_inputs.forEach(el => {
                el.style.border = "1px solid #FEA82F";
                el.style.paddingRight = "0";
                el.classList.remove("valid");
                el.classList.remove("invalid");
            });
    
    const invalid_custom_feedbacks = Array.from(document.getElementsByClassName("invalid-Custom_feedback"));
            invalid_custom_feedbacks.forEach(el => {
                el.style.display = "none";
        }); 

    const invalid_default_feedbacks = Array.from(document.getElementsByClassName("invalid-msg"));
            invalid_default_feedbacks.forEach(el => {
                if(el){
                    el.remove();
                }
        });

    const invalid_msg = document.createElement("div");
    invalid_msg.classList.add("invalid-feedback");
    invalid_msg.classList.add("invalid-msg");
    invalid_msg.id = "invalid-msg";
    invalid_msg.innerHTML = "Invalid College Name";

    const college_fields = Array.from(document.getElementsByClassName("college-fields"));
            college_fields.forEach(el => {
                el.appendChild(invalid_msg);
    });

}

function removeWasValidatedFromForm(){
    
    [...document.querySelectorAll('.registration-form')].forEach(function(item) {
        if(item){
            item.classList.remove("was-validated");   
        }
    });
}

$(document).click(function (event) {
    
    var clickover = $(event.target);

    if(clickover.hasClass("section-tab")){

        // console.log(clickover);
        var header_nav_tab_id = clickover.attr("id");

        var fuel = document.getElementById("fuel-registration-form");
        var shackles = document.getElementById("shackles-registration-form");
        var workshop = document.getElementById("workshop-registration-form");

        removeAutoCompleteCollege();

        if(header_nav_tab_id.includes("fuel")){
        	
        	activeForm = document.querySelector("#fuel-registration-form");
        	
            removeSelectCategoryData(shackles);
            removeSelectCategoryData(workshop);

            removeInputData(shackles);
            removeInputData(workshop);

            hideDetails(shackles);
            hideDetails(workshop);

            addAutoCompleteCollege();

        }

        else if(header_nav_tab_id.includes("shackles")){
        	
        	activeForm = document.querySelector("#shackles-registration-form");

            removeSelectCategoryData(fuel);
            removeSelectCategoryData(workshop);

            removeInputData(fuel);
            removeInputData(workshop);

            hideDetails(fuel);
            hideDetails(workshop);

            addAutoCompleteCollege();
        }

        else if(header_nav_tab_id.includes("workshop")){
        	
        	activeForm = document.querySelector("#workshop-registration-form");

            removeSelectCategoryData(fuel);
            removeSelectCategoryData(shackles);

            removeInputDatas(fuel);
            removeInputDatas(shackles);

            hideDetails(fuel);
            hideDetails(shackles);

            addAutoCompleteCollege();
        }

    }
});


function removeSelectCategoryData(form){

    form.querySelector(".select_name").value ="";

}

function removeInputDatas(form){
    const inputs = Array.from(form.querySelectorAll(".input_text"));
            inputs.forEach(el => {
                el.value="";
            });
    const select_fields = Array.from(form.querySelectorAll(".select_text"));
            select_fields.forEach(el => {
                el.value="";
            });
}

function hideDetails(form){
    form.querySelector("#form-SubTitle").style.display = 'none';
    form.querySelector("#participants").style.display = 'none';
    form.querySelector("#eventFeeDetails").style.display = 'none';
    form.querySelector("#evFeeDetails").style.display = 'none';
    form.querySelector("#benzFeeDetails").style.display = 'none';
    form.querySelector("#submitButton").style.display = 'none';
}

function fetchFile(){
    const participant_details = document.querySelector('.fetch_paticipant-details');
        fetch('Participant_Details.html')
        .then(res=>res.text())
        .then(data=>{
            participant_details.innerHTML=data;
        })
    // loadCollegeList();
    // loadScript();    
}


[...document.querySelectorAll('.participant-name')].forEach(function(item) {
    item.addEventListener('change', function(event) {

        item.value= pascalizeInputNames(item.value);
    
    });
});

function pascalizeInputNames(str) {

    return str.replace(/(\w)(\w*)/g,
        function(g0,g1,g2){return g1.toUpperCase() + g2.toLowerCase();});

}

function removeAutoCompleteCollege(){

    [...document.querySelectorAll('.autoCompleteCollege')].forEach(function(item) {
        // console.log(item.parentNode);
        // console.log(item.parentNode.removeChild(item));
        if(item){
            item.parentNode.removeChild(item);
        }
        
    });

}

function addAutoCompleteCollege(){
    var theScript_1; var theScript_2;
    var body = document.getElementsByTagName('body')[0];

    theScript_1= document.createElement('script');
    theScript_1.src = "../Javascript/CollegeListVariables.js";
    theScript_1.type = "text/javascript";
    theScript_1.classList.add("autoCompleteCollege");

    theScript_2= document.createElement('script');
    theScript_2.src = "../Javascript/AutocompleteSuggestionScript.js";
    theScript_2.type = "text/javascript";
    theScript_2.classList.add("autoCompleteCollege");

    body.appendChild( theScript_1 );
    body.appendChild( theScript_2 );
}

function hideFeeDetails(){

    const feeDetails = Array.from(document.getElementsByClassName("feeDetails"));
            feeDetails.forEach(el => {
                el.style.display= "none";
            });

}
