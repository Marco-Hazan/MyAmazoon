<%@page import="java.util.List"%>
<%@page import="it.aizoon.model.dto.Prodotto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"
    >
    <link rel="stylesheet" href="css/bootstrap-4.6.1-dist/css/bootstrap.min.css" >
    <script src="js/prodotti-array.js"></script>   
    <title>Lista prodotti</title>
</head>
<body class="bg-light">
    <div class="container-fluid">
        <%@include file = "resources/header.jsp" %>
        <div class="row bg-primary text-white">
            <div class="col"> 
                <%@include file = "resources/nav.jsp" %>
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
                <!--
                <div class="row">
                    <div class="col-3">
                        <button class="btn btn-primary">Visualizza tabella di array di array</button>
                    </div>
                    <div class="col-3">
                        <button class="btn btn-warning">Visualizza tabella di array di JSON</button>
                    </div>
                    <div class="col-5">
                        <h3>Riepilogo Prodotti Presenti</h3>
                    </div>
                    <div class="col-1">
                        <button class="btn btn-danger">+Nuovo Prodotto</button>
                    </div>
                </div> -->
                <button class="btn btn-warning" onclick="generaRigheDaArrayJS()">GENERA RIGHE DA ARRAY</button>
                <div class="row justify-content-center mt-4 align-items-center">
                    <div class="col text-right">
                        <h3 class="d-inline m-2">Riepilogo Prodotti Presenti</h3>
                    </div>
                    <div class="col">
                        <button class="btn d-inline btn-danger m-2">+Nuovo Prodotto</button>
                    </div>
                </div>
                <% 
                	String msg = (String) request.getAttribute("messaggio");
                	if(msg != null){
                %>
                	<div class="text-success"><%= msg %></div>
                <% } %>
                <table id="tableProdotti" class="table table-striped table-bordered">
                    <thead>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Descrizione</th>
                        <th>Categoria</th>
                        <th>Prezzo</th>
                    </thead>
                    
                    <tbody id ="bodyTabella">
                    	<% 
                    		List<Prodotto> prodotti = (List<Prodotto>) request.getAttribute("prodotti");
                    		if (prodotti == null || prodotti.size() <= 0){
                    			out.println("<tr><td colspan = 6>Nessun prodotto disponibile</td></tr>");
                    		}else{
                    		for(Prodotto p: prodotti){
                    	%>
                    	<tr>
                    		<td><%= p.getId() %></td>
                    		<td><%= p.getNome() %></td>
                    		<td><%= p.getDescrizione() %></td>
                    		<td><%= p.getCategoria() %></td>
                    		<td> <%= p.getprezzo() %>€ </td>
                    		<td>
                                <div class="btn-group">
                                    <button class="btn btn-warning">Modifica</button>
                                    <a class="btn btn-danger" href="ProdottoDeleteController?id=<%= p.getId() %>">Cancella</a>
                                </div>
                            </td>
                    	</tr>
                    	<% }} %>
                    </tbody>

                </table>

            </div>
        </div>
    </div>
</body>
</html>