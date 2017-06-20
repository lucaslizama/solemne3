$(document).ready(function () {
    $("#btnRegistro").click(function(){
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
                    $("#error-nombre").html(errores.nombre != undefined ? errores.nombre : "");
                    $("#error-apellidoPat").html(errores.apellidoPat != undefined ? errores.apellidoPat : "");
                    $("#error-apellidoMat").html(errores.apellidoMat != undefined ? errores.apellidoMat : "");
                    $("#error-correo").html(errores.correo != undefined ? errores.correo : "");
                    $("#error-user").html(errores.user != undefined ? errores.user : "");
                    $("#error-clave").html(errores.clave != undefined ? errores.clave : "");
                    $("#error-repetir_clave").html(errores.repetir_clave != undefined ? errores.repetir_clave : "");
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