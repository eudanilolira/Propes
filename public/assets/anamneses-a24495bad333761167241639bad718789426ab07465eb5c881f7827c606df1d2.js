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

function validate_cpf(id){
    let invalid_text_id = id + "_invalid_text"
    let cpf_regex = "([0-9]{2}[\.]?[0-9]{3}[\.]?[0-9]{3}[\/]?[0-9]{4}[-]?[0-9]{2})|([0-9]{3}[\.]?[0-9]{3}[\.]?[0-9]{3}[-]?[0-9]{2})"
    let cpf = $(id).val()

    if(cpf_regex.test(cpf)){
        $(text).remove();
        $(id).removeClass("is-invalid");
    }else {
        $(id).addClass("is-invalid");
        $(id).after(`<small id= ${invalid_text_id.slice(1)} class='text-danger'> Preencha o campo por favor. </small>`);
    }
}
;
