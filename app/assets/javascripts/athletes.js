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

$(document).ready(function () { 
  $("#athlete_cpf").mask('000.000.000-00', {placeholder: "000.000.000-00"} );
  $("#athlete_cep").mask('00000-000', {placeholder: "00000-000"});
  $("#athlete_home_phone").mask('(00) 0000 0000',{placeholder: "(81) 00000000"});
  $("#athlete_cell_phone").mask('(00) 00000 0000', {placeholder: "(81) 000000000"});
  $("#athlete_date_birth").mask('00/00/0000', {placeholder: "__/__/____"});
});

$(document).ready(function(){
  $("#submit_form").click(function(){
    alert("Cadastro realizado com sucesso !");
  })
})
