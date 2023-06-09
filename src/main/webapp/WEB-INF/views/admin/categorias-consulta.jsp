<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page import="java.util.List"%>
<%@ page import="br.com.cotiinformatica.entities.Categoria"%>

<%
//capturando a lista de categorias enviada pelo controlador
List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Projeto Contas</title>

<!-- controle de cache -->
<jsp:include page="/WEB-INF/views/components/cache-control.jsp"></jsp:include>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css" />

</head>
<body>

	<!-- menu do sistema -->
	<jsp:include page="/WEB-INF/views/components/menu.jsp"></jsp:include>

	<div class="m-4">
		<div class="card">
			<div class="card-body">

				<h5>Consulta de categorias</h5>
				<p>Listagem de categorias cadastradas pelo usu�rio.</p>

				<div class="table-responsive">
					<table id="tabela_categorias" class="table table-sm mt-3">
						<thead>
							<tr>
								<th>Nome da categoria</th>
								<th>Tipo</th>
								<th>Opera��es</th>
							</tr>
						</thead>
						<tbody>

							<%
							for (Categoria item : categorias) {
							%>

							<tr>
								<td><%=item.getNome()%></td>
								<td><%=item.getTipo()%></td>
								<td><a href="#" class="btn btn-sm btn-outline-primary">
										Editar </a> <a href="#" class="btn btn-sm btn-outline-danger">
										Excluir </a></td>
							</tr>

							<%
							}
							%>

						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>

	<script>
		$(document).ready(function() {$("#tabela_categorias").DataTable({language : {
		url : 'https://cdn.datatables.net/plug-ins/1.13.4/i18n/pt-BR.json'}});
		})
	</script>

</body>
</html>

