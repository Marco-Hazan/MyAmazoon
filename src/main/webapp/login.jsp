<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap-4.6.1-dist/css/bootstrap.min.css">
    <title>Login</title>
    <style>
        input:valid{border: 1px solid green;}
        input:invalid{border:1px solid red;}
    </style>
</head>
<body class="bg-light">
    <div class="container-fluid">
        <%@include file = "resources/header.jsp" %>
        <div class="row bg-primary text-white">
            <div class="col"> 
                <%@include file = "resources/nav.jsp" %>
            </div>
        </div>
        <div class="row m-2 p-2">
            <div class="col"></div>
            <div class="col">
                <p class="text-danger">*campi obbligatori</p>
                <p class="text-danger" id="targetErrore">
                	<!-- SCRIVO DEL CODICE CHE VERRA' ESEGUITO LATO SERVER
                	IL CODICE RECUPERA L'ATTRIBUTO E LO METTE IN PAGINA -->
                	<%
                		String msg = (String) request.getAttribute("msg");
                		if(msg != null)
                			out.println(msg);
                	%>
                </p>
                <form  name="loginForm" action="LoginController" method ="get">
                    <div class="form-group">
                        <label for="username">*Username:</label>
                        <input type="text" class="form-control" name="username" id="username">
                    </div>
                    <div class="form-group">
                        <label for="pwd">*Password:</label>
                        <input type="password" class="form-control" name="pwd" id="pwd">
                    </div>
                    <div class="text-center">
                        <button type="button" onclick="validaDati()" class="btn btn-success w-50">Invia</button>
                    </div>
                </form>
            </div>
            <div class="col"></div>
        </div>
    </div>
    <script>
        /*
            Il tasto submit lo trasformo in un semplice tasto button così non spedisce automaticamente.
            Se password o utente sono nulli faccio vedere messaggio errore, sennò spedisco i dati del form tramite js
            Altra opzione: nel tag del form -> onSubmit(return funzione()) se la funzione è false non submitta
        */
        function validaDati(){
            const username = document.getElementById("username").value;
            //oppure accedo direttamente al form cosi, funziona solo per i form
            //const username = document.loginForm.password.value;
            const password = document.getElementById("pwd").value;
            let msgErrore = "";
            if(username == "")
                msgErrore += "Il campo username è obbligatorio!!<br>";
            if(password == "")
                msgErrore += "Il campo password è obbligatorio!!<br>";
            if(msgErrore != "")
                document.getElementById("targetErrore").innerHTML = msgErrore;
            else 
                document.forms[0].submit();
        }
    </script>
</body>
</html>