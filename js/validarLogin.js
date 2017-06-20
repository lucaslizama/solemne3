$(document).ready(function () {
    $("#btnLogin").click(function() {
        $.ajax({
            type: "POST",
            url: "src/procesarRegistro.php",
            data: {
                nombre: $("#nombre").val(),
                apellidoPat: $("#apellidoPat").val(),
                apellidoMat: $("#apellidoMat").val(),
                correo: $("#correo").val(),
                user: $("#user").val(),
                clave: $("#clave").val()
            },
            success: function (response) {
                var data = jQuery.parseJSON(response);
                var errores;
                if(data.Exito == undefined){
                    errores = data;
                    $("#error-user").html(errores.nombre != undefined ? errores.nombre : "");
                    $("#error-clave").html(errores.apellidoPat != undefined ? errores.apellidoPat : "");
                    return;
                }

                if(data.Exito) {
                    $("#hiddenUser").val($("#user").val());
                    $("#hiddenClave").val($("#clave").val());
                    $("#loginForm").submit();
                }
            }
        });
    });
});