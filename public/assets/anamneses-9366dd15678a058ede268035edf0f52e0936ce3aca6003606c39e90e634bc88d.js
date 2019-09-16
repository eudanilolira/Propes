$(document).ready(function(){
    $("#anamnese_main_complaint").focusout(() => { validate("#anamnese_main_complaint"); }); 
    $("#anamnese_history_complaint").focusout(() => { validate("#anamnese_history_complaint"); }); 
    $("#anamnese_history_injuries").focusout(() => { validate("#anamnese_history_injuries"); }); 
    $("#anamnese_nature_complaint").focusout(() => { validate("#anamnese_nature_complaint"); }); 
    $("#anamnese_is_accompanying").focusout(() => { validate("#anamnese_is_accompanying"); }); 
});

function validate(id){
    var text = id + "_to_fill";

    if ($(id).val() == ""){
        $(id).addClass("is-invalid");
        $(id).after(`<small id= ${text.slice(1)} class='text-danger'> Preencha o campo por favor. </small>`);
    } else {
        $(text).remove();
        $(id).removeClass("is-invalid");
    };
};
