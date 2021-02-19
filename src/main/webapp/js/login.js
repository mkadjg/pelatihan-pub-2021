$(document).ready(function () {

    toastr.options = {
        "closeButton": true,
        "debug": false,
        "newestOnTop": true,
        "progressBar": false,
        "positionClass": "toast-bottom-right",
        "preventDuplicates": false,
        "onclick": null,
        "showDuration": "300",
        "hideDuration": "1000",
        "timeOut": "2000",
        "extendedTimeOut": "1000",
        "showEasing": "swing",
        "hideEasing": "linear",
        "showMethod": "fadeIn",
        "hideMethod": "fadeOut"
    };

    $("form").submit(function(event){
        event.preventDefault();

        const body = {
            "email" : $("input[name=email]").val(),
            "password" : $("input[name=password]").val()
        }

        $.post({
            url: "/login/do-login",
            contentType: "application/json",
            data : JSON.stringify(body),
            success: function(response){
                window.location.replace("/home/");
            },
            error : function (response){
                let resJSON = response.responseJSON;
                toastr.error(resJSON.responseType, resJSON.message);
            }
        });
    });

});