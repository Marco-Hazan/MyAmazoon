<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Pagina di amminstrazione !!</h1>
	<%
		String msg = (String) request.getAttribute("msg");
		if(msg != null)
		   out.println(msg);
     %>
</body>
</html>