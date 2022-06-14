<%@page import="java.util.List"%>
<%@page import="it.aizoon.model.dto.Utente"%>
<%@ page language="java" contentType="text/html;" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="js/utenti-json.js"></script>
    <link rel="stylesheet" href="css/bootstrap-4.6.1-dist/css/bootstrap.min.css">
    <title>Document</title>
</head>
<body>
    <div class="container-fluid">
        <div class="row p-3 align-items-center">
            <div class = "col-3">
                <img src="img/amazon.png" class="w-25" alt="logo">
            </div>
            <div class="col-6 text-center font">
                <a style="font-size:38px" class="navbar-brand" href="index.html"> Amaizoon</a>
            </div>
        </div>
        <div class="row bg-primary text-white">
            <div class="col"> 
                <a class ="btn btn-sm btn-danger m-2" href="login.html">Login</a>
                <a class ="btn btn-sm btn-primary m-2" href="lista-prodotti.html">Lista Prodotti</a>
                <a class ="btn btn-sm btn-primary m-2" href="utente-list.html">Lista Utenti</a>
                <a class ="btn btn-sm btn-primary m-2" href="index.html">Lista ordini </a>
                <a class ="btn btn-sm btn-primary m-2" href="prodotto-form.html">Crea prodotto </a>
            </div>
        </div>
        <div class="row m-1">
            <div class="col-2">
                <button class="btn btn-block btn-danger">Amministrazione</button>
                <button class="btn btn-block btn-outline-primary">Elenco Prodotti</button>
                <button class="btn btn-block btn-outline-primary">Elenco categorie</button>
                <button class="btn btn-block btn-outline-primary">Elenco utenti</button>
            </div>
            <div class="col-10">
                <button class="btn btn-warning" onclick="generaRigheDaArrayJS()">GENERA RIGHE DA ARRAY</button>
                <div class="row justify-content-center mt-4 align-items-center">
                    <div class="col text-right">
                        <h3 class="d-inline m-2">Riepilogo Utenti Presenti</h3>
                    </div>
                    <div class="col">
                        <button class="btn d-inline btn-danger m-2">+Nuovo Prodotto</button>
                    </div>
                </div>

                <table id="tableProdotti" class="table table-striped table-bordered">
                    <thead>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Cognome</th>
                        <th>Linguaggi conosciuti</th>
                        <th>Indirizzo azienda</th>
                    </thead>
                    
                    <tbody id ="bodyTabella">
						<%  
							List<Utente> utenti = (List<Utente>) request.getAttribute("utenti"); 
							for(Utente u: utenti){	
						%>
						<tr>
							<td><%= u.getId() %> </td>
							<td><%= u.getNome() %> </td>
							<td><%= u.getCognome() %></td>
							<td>JAVA</td>
							<td>VIA DEI BALORDI 44</td>
						</tr>
						<% } %>
                    </tbody>



                </table>

            </div>
        </div>
    </div>
    <script>
        function generaRigheDaArrayJS(){ 
            let msg = "";
            for(let i=0;i<utenti.length;i++){
                //PER OGNI RIGA
                msg += `<tr>`;
                msg += `<td>${utenti[i].id}</td>`;
                msg += `<td>${utenti[i].nome}</td>`;
                msg += `<td>${utenti[i].cognome}</td>`;
                msg += "<td>";
            }
            document.getElementById("bodyTabella").innerHTML = msg;
            document.getElementsByTagName("table")[0].classList.remove("d-none");
    }
    </script>
</body>
</html>