<!doctype html>
<%@page import="dao.UsuarioDAOC"%>
<%@page import="model.Usuario"%>


<%@page import="java.util.List"%>
<html lang="en">

<head>
  <title>Listado de usuarios</title>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="css/estilo2.css" rel="stylesheet" type="text/css">
</head>

<body class="text-center bg-light">

  <header>
        <nav>
            <div id="header">
                <ul class="nav">
                    <li><a href="inicio.html">Inicio</a></li>
                </ul>
            </div>
        </nav>
   </header>

  <div class="container">
    <div class="py-4 text-center">
      <img class="d-block mx-auto mb-4" src="./images/logo.jpg" alt="Logo caba" width="72" height="72">
      <p class="lead">Listado de usuarios</p>
    </div>

    <table class="table table-hover table-sm">
      <thead class="thead-dark">
        <tr>
          <th scope="col">#ID</th>
          <th scope="col">Usuario</th>
          <th scope="col">Contraseņa</th>
        </tr>
      </thead>
      <tbody>

        <%
        UsuarioDAOC dao = new UsuarioDAOC();
        List<Usuario> listUsu = dao.listarUsuarios();

		for (Usuario usuario : listUsu) {
			out.println("<tr>");
			out.println("<td>" + usuario.getIdUsuario() + "</td>");
			out.println("<td>" + usuario.getUsuario() + "</td>");
			out.println("<td>" + usuario.getClave() + "</td>");
			out.println("</tr>");
			
		}
        
        	
        %>
        
      </tbody>
    </table>


  </div>


  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>