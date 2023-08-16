
var sortedColleges = collegeNames.sort();

function pascalize(str) {

    return str.replace(/(\w)(\w*)/g,
        function(g0,g1,g2){return g1.toUpperCase() + g2.toLowerCase();});

}

var collegeNameInput;

function declareActiveForm(activeForm){
	collegeNameInput = activeForm.querySelector("#collegeName");
    collegeNameInput.addEventListener("blur", fillCollegeNameTyped_CaseInsensitive);
    collegeNameInput.addEventListener("keyup", fillCollegeNameTyped);
}

// if(collegeNameInput){
//	 var collegeNameInput = activeForm.querySelector("#collegeName");
//     collegeNameInput.addEventListener("blur", fillCollegeNameTyped_CaseInsensitive);
// }

//[...document.querySelectorAll('.collegeNameInput')].forEach(function(item){
//
//    item.addEventListener("keyup", (e) => {
//
//        console.log("key pressed");
//
//        removeElements();
//        // removePattern();
//    
//        for(let i of sortedColleges){
//    
//            if(i.toLowerCase().startsWith(collegeNameInput.value.toLowerCase()) && collegeNameInput.value != ""){
//
//                let listItem = document.createElement("li");
//                
//                console.log("in the college input");
//
//                listItem.classList.add("list-items", "list-group-item");
//                listItem.style.cursor ="pointer";
//                listItem.setAttribute("onclick", "displayNames('"+ i +"')");
//    
//                let word = "<b>" + i.substring(0, collegeNameInput.value.length) +"</b>";
//                word+= i.substring(collegeNameInput.value.length);
//    
//                listItem.innerHTML = word;
////                document.querySelectorAll(".list").appendChild(listItem);
//                
//                [...document.querySelectorAll('.list')].forEach(function(itemA){
//
//                    if(itemA){
//                        itemA.appendChild(listItem);
//                    }
//
//                });
//    
//            }
//
//        }
//
//    });
//
//});

function fillCollegeNameTyped(){

	        removeElements();
	        // removePattern();
	    
	        for(let i of sortedColleges){
	    
	            if(i.toLowerCase().startsWith(collegeNameInput.value.toLowerCase()) && collegeNameInput.value != ""){

	                let listItem = document.createElement("li");

	                listItem.classList.add("list-items", "list-group-item");
	                listItem.style.cursor ="pointer";
	                listItem.setAttribute("onclick", "displayNames('"+ i +"')");
	    
	                let word = "<b>" + i.substring(0, collegeNameInput.value.length) +"</b>";
	                word+= i.substring(collegeNameInput.value.length);
	    
	                listItem.innerHTML = word;
	                
	                if(collegeNameInput.matches('.shackles-college')){
	                	var activeCollegeForm = document.querySelector("#shackles-registration-form");
	                	activeCollegeForm.querySelector(".list").appendChild(listItem);
	                }
	                else if(collegeNameInput.matches('.workshop-college')){
	                	var activeCollegeForm = document.querySelector("#workshop-registration-form");
	                	activeCollegeForm.querySelector(".list").appendChild(listItem);
	                }
	                else{
	                	document.querySelector(".list").appendChild(listItem);
	                }
//	                document.querySelector(".list").appendChild(listItem);

	    
	            }

	        }

	    }

function displayNames(value){
    collegeNameInput.value = value;
    styleCorrectCollegeNameInputBox();
    // setPattern(value);
    removeElements();
}

function removeElements(){
    let items = document.querySelectorAll(".list-items");
    items.forEach((item)=>{
        item.remove();
    });
}


function fillCollegeNameTyped_CaseInsensitive(){

    var collegeNameInputIndex = sortedColleges.findIndex(colleges => {
        return collegeNameInput.value.toLowerCase() == colleges.toLowerCase()
        });

    if(collegeNameInputIndex != -1){
        // styleCorrectCollegeNameInputBox();
    	if(!collegeNameInput.matches('.fuel-college')){
    		displayNames(sortedColleges[collegeNameInputIndex]);
    	}
    }
    else{
        styleWrongCollegeNameInputBox();
    }

}                   

function styleCorrectCollegeNameInputBox(){

    collegeNameInput.style.borderColor = valid_borderColor;
    collegeNameInput.style.paddingRight = padding_Right;
    collegeNameInput.classList.add("valid");
    collegeNameInput.classList.remove("invalid");
    collegeNameInput.style.backgroundRepeat = background_Repeat;
    collegeNameInput.style.backgroundPosition = background_Position;
    collegeNameInput.style.backgroundSize = background_Size;

    const invalid_custom_feedbacks = Array.from(document.getElementsByClassName("invalid-Custom_feedback"));
        invalid_custom_feedbacks.forEach(el => {
            if(el){
                el.style.display="none";
            }
    });

}