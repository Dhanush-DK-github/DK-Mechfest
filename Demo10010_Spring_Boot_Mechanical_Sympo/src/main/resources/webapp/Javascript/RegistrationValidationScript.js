var inputBoxInEachParticipant = 4;
var selectBoxInEachParticipant = 1;
var totalInputs = inputBoxInEachParticipant + selectBoxInEachParticipant;

const hasDuplicates = (arr) => arr.length !== new Set(arr).size;

function validateEmail(emailAddress){

    var regExp = /[a-z]/g;

    if(emailAddress.value!=""){

        const emailSplit = emailAddress.value.split("@");
        const emailInputId = emailAddress.id;

        if(emailSplit.length==2){

            let emailFirst = emailSplit[0];
            let emailSecond = emailSplit[1];

            emailFirstPartCheck(emailFirst, emailInputId, regExp);
            emailSecondPartCheck(emailSecond, emailInputId);

        }
        else{
            invalidEmailAlert(emailInputId);
        }
    }
};

function emailFirstPartCheck(emailFirst, emailInputId, regExp){

    if(regExp.test(emailFirst)){

        if(emailFirst.charAt(emailFirst.length - 1)!='.'){
            
            let count = 0;
            
            // looping through the items
            for (let i = 0; i < emailFirst.length; i++) {

                // check if the character is at that position
                if (emailFirst.charAt(i) == '.') {
                    count += 1;
                    if(count==2){
                        invalidEmailAlert(emailInputId);
                    }
                }
            }
        }
        else{
            invalidEmailAlert(emailInputId);
        }

    }
    else{
        invalidEmailAlert(emailInputId);
    }
}

function emailSecondPartCheck(emailSecond, emailInputId){
    if(emailSecond!="gmail.com"){
        alert("Please use Gmail Address");
        document.getElementById(emailInputId).value="";
    }
}

function invalidEmailAlert(emailInputId){
    alert("Invalid Email Address");
    document.getElementById(emailInputId).value="";
}

//validating form

function validateForm(form){

    return (completeParticipantDetailsFilled(form) && uniqueInputsCheck() && validateCollegeName());

}

function completeParticipantDetailsFilled(form){
	
    const participants = form.querySelectorAll(".participant");

    var enteredInput;
    
    for(let i=1;i<=participants.length;i++){
        
        enteredInput = 0;
        
        const inputs = Array.from(form.querySelectorAll("#participant_"+i+" input"));

        for(let j=0;j<inputs.length;j++){
        	
        	if(inputs[j].value != ""){
	        	
	        	if(!((inputs[j].value).replace(/\s/g, '').length)){
                    
	        		alert("Not a valid input provided in PARTICIPANT-"+i+": "+((inputs[j].name).split("."))[1].toUpperCase()+" field");
//	        		fullWhiteSpaceInput +=1;
	        		return false;

	        	}
	        	
	        	enteredInput+=1;
	        }
            else{
            	inputs[j].setAttribute("disabled", "");
            }
        }
	        
	    const select_fields = Array.from(form.querySelectorAll("#participant_"+i+" select"));
	    
	    for(let j=0;j<select_fields.length;j++){
	    	
	    	if(select_fields[j].value != ""){
	    		enteredInput+=1;
            }
            else{
            	select_fields[j].setAttribute("disabled", "");
            }
	    }
            

        if(enteredInput>=1){
            if(enteredInput!=totalInputs){
                alert("Please provide complete details of Participant-"+i);
                removeDisabled(form);
                return false;
            }
        }
    }

    return true;
    
}

function removeDisabled(form){
	
    for (let i = minParticipant; i <= totalParticipants; i++){
    	

        form.querySelectorAll("#participant_"+i+" input").forEach((item) => 
    
            item.removeAttribute("disabled")
    
        ); 
        
        form.querySelectorAll("#participant_"+i+" select").forEach((item) => 
    
            item.removeAttribute("disabled")
    
        ); 
    }
}

function uniqueInputsCheck(){

    return (uniqueRollNoCheck() && uniqueMobileNoCheck() && uniqueMailIdCheck());
}

function uniqueRollNoCheck(){

    var rollNoIds = document.querySelectorAll('[id*="rollNo"]');
    var rollNoValues = [];
    for(let k=0;k<rollNoIds.length;k++){

        if(rollNoIds[k].value!=""){
            rollNoValues.push(rollNoIds[k].value);
        }
    }

    if(hasDuplicates(rollNoValues)){
        alert("You have used same Roll.No for more than one Participant");
        return false;
    }
    else{
        return true
    }
}

function uniqueMobileNoCheck(){

    var mobileNoIds = document.querySelectorAll('[id*="mob"]');
    var mobileNoValues = [];
    for(let k=0;k<mobileNoIds.length;k++){

        if(mobileNoIds[k].value!=""){
            mobileNoValues.push(mobileNoIds[k].value);
        }
    }

    if(hasDuplicates(mobileNoValues)){
        alert("You have used same Mobile No for more than one Participant");
        return false;
    }
    else{
        return true;
    }

}

function uniqueMailIdCheck(){

    var emailIdIds = document.querySelectorAll('[id*="email"]');
    var emailIdValues = [];
    for(let k=0;k<emailIdIds.length;k++){

        if(emailIdIds[k].value!=""){
            emailIdValues.push(emailIdIds[k].value);
        }
    }

    if(hasDuplicates(emailIdValues)){
        alert("You have used same Email Id for more than one Participant");
        return false;
    }
    else{
        return true;
    }

}

function validateCollegeName(){

    if(sortedColleges.includes(collegeNameInput.value)){
        return true
    }
    else if(collegeNameInput.value != "" && !(sortedColleges.includes(collegeNameInput.value))){
        styleWrongCollegeNameInputBox();
        return false;
    }
}

function styleWrongCollegeNameInputBox(){

    collegeNameInput.style.borderColor = "#dc3545";
    collegeNameInput.style.paddingRight = "calc(1.5em + 0.75rem)";
    collegeNameInput.classList.add("invalid");
    collegeNameInput.classList.remove("valid");
    collegeNameInput.style.backgroundRepeat = "no-repeat";
    collegeNameInput.style.backgroundPosition = "right calc(0.375em + 0.1875rem) center";
    collegeNameInput.style.backgroundSize = "calc(0.75em + 0.375rem) calc(0.75em + 0.375rem)";

    const invalid_custom_feedbacks = Array.from(document.getElementsByClassName("invalid-Custom_feedback"));
    invalid_custom_feedbacks.forEach(el => {
        if(el){
            el.style.display="block";
        }
    });

    const invalid_default_feedbacks = Array.from(document.getElementsByClassName("invalid-msg"));
    invalid_default_feedbacks.forEach(el => {
        if(el){
            el.remove();
        }
    });

    
}
