<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "EsempioServletTabellaPitagorica">Chiamo la servlet tabella pitagorica</a>
	<a href = "EsempioServletTabellaPitagorica?numero=3">
		Chiamo la servlet tabella pitagorica passando un parametro
	</a>
	<hr>
	FORM GET
	<form action="EsempioServletTabellaPitagorica" method ="get">
		Inserisci numero: <input type="text" name="numero">
		<button type="submit">INVIA</button>
	</form>
	FORM POST
	<form action="EsempioServletTabellaPitagorica" method ="post">
		Inserisci numero: <input type="text" name="numero">
		<button type="submit">INVIA</button>
	</form>
	
</body>
</html>
