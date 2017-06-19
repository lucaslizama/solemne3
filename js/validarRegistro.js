$(document).ready(function () {
    console.log($("#btnRegistro"));
    $("#btnRegistro").click(function(){
        $.post("http://solemne3.dev/src/procesarRegistro.php",
                    {"nombre": "",
                    "apellidoPat": "",
                    "apellidoMat" : "",
                    "correo": "",
                    "clave": ""},
            function (data, textStatus, jqXHR) {
                console.log(data);
            },
            "json"
        );
    });
});