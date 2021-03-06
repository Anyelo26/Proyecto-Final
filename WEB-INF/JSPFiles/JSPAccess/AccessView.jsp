<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="model.Access"%>
<%Access acceso= (Access)request.getAttribute("acceso");%>
<% String menu= (String)request.getAttribute("menu"); %>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Access View</title>
<!-- LOS ENLACES A LOS ESTILOS -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="../css/font-awesome.min.css">
	<link rel="stylesheet" href="../css/animate.css">
	<link href="../css/animate.min.css" rel="stylesheet"> 
	<link href="../css/style.css" rel="stylesheet" />
</head>
<body>

	<header id="header" >
        <nav class="navbar navbar-default navbar-static-top "  role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu" >
						<ul class="nav nav-tabs " role="tablist">
							<li role="presentation"><a href="../index.jsp" class="active">Casa</a></li>
							<%=menu%>
							<li role="presentation"><a href="/UserLogin">Login</a></li>
							<li role="presentation"><a href="/UserLogout">Logout</a></li>
							<li role="presentation"><a href="/User/Register">Registrarse</a></li>
							<li role="presentation"><a href="/Product/Display">Productos</a></li>
							<li role="presentation"><a href="/peces">Peces</a></li>
							<li role="presentation"><a href="/lab08_foro">Foro</a></li>
							<li role="presentation"><a href="/Recomendaciones">Recomendaciones</a></li>	
							<li role="presentation"><a href="/Clientes">Clientes</a></li>	
							<li role="presentation" style="margin-left:45%"><div class="navbar-brand">
								<a href="../index.jsp"><h1>OMEGA-AQP</h1></a>
							</div></li>
													
						</ul>
					</div>
				</div>		
            </div>
        </nav>		
    </header>
<div class="container">
	<a href="/Access/Display" class="atras">Volver</a>

	<table class="table table-bordered table-hover">
		<tr><td>Recurso</td><td><%=acceso.getIdUrl() %></td></tr>
		<tr><td>Rol</td><td><%=acceso.getIdRole() %></td></tr>
		<tr><td>ID</td><td><%=acceso.getId() %></td></tr>
		<tr><td>Status</td><td><%=acceso.getStatus() %></td></tr>
		<tr><td>Fecha de creación</td><td><%=acceso.getFecha() %></td></tr>
	</table>
	</div>
</body>
</html>