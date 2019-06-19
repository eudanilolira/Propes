$(document).ready(function(){
    $("#bridge_extension_right_side").focusout(() => { validate("#bridge_extension_right_side"); }); 
    $("#bridge_extension_left_side").focusout(() => { validate("#bridge_extension_left_side"); }); 
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
