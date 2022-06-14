<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap-4.6.1-dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/stile-generale.css"> <!-- type posso anche non dichiararlo-->
        <title>Document</title>
    </head>
    <body class="bg-light">
        <div class="container-fluid">
            <%@include file = "/resources/header.jsp" %>
            <div class="row bg-primary text-white">
                <div class="col"> 
                	<!-- INCLUDO NAV.jsp che contiene menu di navigazione -->
                    <%@include file = "/resources/nav.jsp" %>
                </div>
            </div>
            <div class="row">
                <div class="col-3 p-2">
                    <button class="btn btn-block btn-sm btn-outline-success">Tutte le categorie</button>
                    <button class="btn btn-block btn-sm btn-warning">Elettrodomestici</button>
                    <button class="btn btn-block btn-sm btn-success">Portatili</button>
                    <button class="btn btn-block btn-sm btn-dark">Smartphone</button>
                </div>
                <div class="col-8 m-1 p-1">
                    <div class="card m-1 p-1 bg-info">
                        <h4>
                            <span class="badge badge-pill float-left">
                                Redmi 9c
                            </span>
                            <span class="badge badge-pill badge-primary float-left bg-dark">
                                Smartphone
                            </span>
                            <span class="badge badge-pill badge-primary float-right">
                                129.00€
                            </span>
                        </h4>
                        <div class="card-text bg-white-p1 mb-3">
                            Cellulare Xiaomi veloce ed economico
                            <button class="btn btn-success float-right">Aggiungi al carrello</button>
                        </div>
                    </div>
                    <div class="card m-1 p-1 bg-info">
                        <h4>
                            <span class="badge badge-pill float-left">
                                Dell Aizoon
                            </span>
                            <span class="badge badge-pill badge-primary float-left bg-success">
                                Portatili
                            </span>
                            <span class="badge badge-pill badge-primary float-right">
                                800.00€
                            </span>
                        </h4>
                        <div class="card-text bg-white-p1 mb-3">
                            Molto efficente
                            <button class="btn btn-success float-right">Aggiungi al carrello</button>
                        </div>
                    </div>

                    <div class="card m-1 p-1 bg-info">
                        <h4>
                            <span class="badge badge-pill float-left">
                                Lavatrice   
                            </span>
                            <span class="badge badge-pill badge-primary float-left bg-warning">
                                Elettrodomestici
                            </span>
                            <span class="badge badge-pill badge-primary float-right">
                                800.00â¬
                            </span>
                        </h4>
                        <div class="card-text bg-white-p1 mb-3">
                            Gira molto veloce
                            <button class="btn btn-success float-right">Aggiungi al carrello</button>
                        </div>
                    </div>
                    <div class="card m-1 p-1 bg-info">
                        <h4>
                            <span class="badge badge-pill float-left">
                                Hp-1220H   
                            </span>
                            <span class="badge badge-pill badge-primary float-left bg-success">
                                Portatili
                            </span>
                            <span class="badge badge-pill badge-primary float-right">
                                1000.00â¬
                            </span>
                        </h4>
                        <div class="card-text bg-white-p1 mb-3">
                            Ci sta dai, fa il suo
                            <button class="btn btn-success float-right">Aggiungi al carrello</button>
                        </div>
                    </div>
                    <div class="card m-1 p-1 bg-info">
                        <h4>
                            <span class="badge badge-pill float-left">
                                Iphone X30  
                            </span>
                            <span class="badge badge-pill badge-primary float-left bg-dark">
                                Smartphone
                            </span>
                            <span class="badge badge-pill badge-primary float-right">
                                100000000.00â¬
                            </span>
                        </h4>
                        <div class="card-text bg-white-p1 mb-3">
                            Fotocamera da venti fotocamere
                            <button class="btn btn-success float-right">Aggiungi al carrello</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

    </body>
</html>