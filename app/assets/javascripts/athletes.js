var evaluation_list = [];


function change_to_active(){
    // Get the container element
    var btnContainer = document.getElementById("nav-menu");
    
    // Get all buttons with class="btn" inside the container
    var btns = btnContainer.getElementsByClassName("btn-nav-menu");
    
    // Loop through the buttons and add the active class to the current/clicked button
    for (var i = 0; i < btns.length; i++) {
      btns[i].addEventListener("click", function() {
        var current = document.getElementsByClassName("active");
        current[0].className = current[0].className.replace(" active", "");
        this.className += " active";
      });
    }    
}


$(document).ready(function (){
  $('#do_evaluations').click(function (){
    for (let i = 0; i < 13; i++){
        if ($('#evaluation' + i).prop("checked") == true){
            evaluation_list.push($('#evaluation'+ i).val());
        };
    };
    console.log(evaluation_list);

    $.ajax({
      url: "http://localhost:3000/list_evaluations/set_list?list="+evaluation_list,
      success: function(data) {
      }
    });
  });
});
