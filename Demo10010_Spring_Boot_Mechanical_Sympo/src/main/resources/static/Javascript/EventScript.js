// function activateTab(headerTab){
//     console.log(headerTab.id);
//     $("[id='section-"+headerTab.id+"']").click();    
// }


$(document).click(function (event) {
    
    var clickover = $(event.target);

    if(clickover.hasClass("header-nav-tab-link")||clickover.hasClass("header-nav-tab-dropdown")){

        var header_nav_tab_id = clickover.attr("id");

        if(header_nav_tab_id.includes("-dropdown")){

            // show dropdown menus with the tab width and switch to that section tab
            var dropdown_id = header_nav_tab_id;

            $("[id='"+dropdown_id+"-menu']").toggleClass("show");

            header_nav_tab_id = header_nav_tab_id.replace("-dropdown", "");

            // set the dropdown menu width
            var header_nav_tab_dimensions = $("[id='"+header_nav_tab_id+"']")[0].getBoundingClientRect();
            $("[id='"+dropdown_id+"-menu']").css("width", header_nav_tab_dimensions.width);
            
        }

        $("[id='section-"+header_nav_tab_id+"']").click();
    
    }

    var _opened_dropdown = $(".dropdown-menu").hasClass("show");

    if (_opened_dropdown === true && !clickover.hasClass("header-nav-tab-dropdown") && !clickover.hasClass("section-tab")) 
    {    
            if($("#fuel-tab-dropdown-menu").hasClass("show")){
                $("#fuel-tab-dropdown-menu").toggleClass("show");
            }
            else if($("#shackles-tab-dropdown-menu").hasClass("show")){
                $("#shackles-tab-dropdown-menu").toggleClass("show");
            }
    }

    if(clickover.hasClass("header-nav-tab-dropdown")){

        if(clickover.attr("id")=="fuel-tab-dropdown" && $("#shackles-tab-dropdown-menu").hasClass("show")){
            $("#shackles-tab-dropdown-menu").toggleClass("show");
        }
        else if(clickover.attr("id")=="shackles-tab-dropdown" && $("#fuel-tab-dropdown-menu").hasClass("show")){
            $("#fuel-tab-dropdown-menu").toggleClass("show");
        }
    }

});

[...document.querySelectorAll('.dropdown-item')].forEach(function(item) {
    item.addEventListener('click', function(event) {

    var dropdown_clickover = $(event.target);
    dropdown_clickover = dropdown_clickover.attr("id").replace("-item", "");

    $('#' + dropdown_clickover).mouseover();
    });
});
