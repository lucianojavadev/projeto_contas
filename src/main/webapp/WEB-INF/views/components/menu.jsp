<style>
.navbar-nav .nav-link:hover {
	outline: 2px solid white; /* Define o contorno ao passar o mouse */
}
</style>
<nav class="navbar bg-primary navbar-expand-lg bg-body-tertiary"
	data-bs-theme="theme">
	<div class="container-fluid">
		<a class="navbar-brand text-white" href="#">Projeto Contas</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active text-white"
					aria-current="page" href="/projeto_contas/admin/dashboard">
						Dashboard </a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> Gerenciar
						Categorias </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="/projeto_contas/admin/categorias-cadastro">Cadastrar
								categorias</a></li>
						<li><a class="dropdown-item"
							href="/projeto_contas/admin/categorias-consulta">Consultar
								categorias</a></li>
					</ul></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-white" href="#" role="button"
					data-bs-toggle="dropdown" aria-expanded="false"> Gerenciar
						Contas </a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item"
							href="/projeto_contas/admin/contas-cadastro">Cadastrar contas</a></li>
						<li><a class="dropdown-item"
							href="/projeto_contas/admin/contas-consulta">Consultar contas</a></li>
					</ul></li>
			</ul>
		</div>
		<div class="navbar-text">
			<span class="text-light">${auth_usuario.nome }</span> 
			<span class="text-light"> | </span>
			<span class="text-light">${auth_usuario.email }</span>

			<a href="/projeto_contas/logout"
				class="btn btn-outline-secondary text-white ms-2"
				onclick="return confirm('Deseja realmente sair do sistema?');">
				Sair do Sistema </a>
		</div>

	</div>
</nav>