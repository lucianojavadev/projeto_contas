package br.com.cotiinformatica.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.cotiinformatica.entities.Categoria;
import br.com.cotiinformatica.entities.Usuario;
import br.com.cotiinformatica.repositories.CategoriaRepository;

@Controller
public class CategoriasConsultaController {

	@Autowired
	private CategoriaRepository categoriaRepository;

	@RequestMapping(value = "/admin/categorias-consulta")
	public ModelAndView categoriasConsulta(HttpServletRequest request) {
		// WEB-INF/views/admin/categorias-consulta.jsp
		ModelAndView modelAndView = new ModelAndView("admin/categorias-consulta");

		try {

			Usuario usuario = (Usuario) request.getSession().getAttribute("auth_usuario");

			List<Categoria> categorias = categoriaRepository.findAll(usuario.getIdUsuario());

			modelAndView.addObject("categorias", categorias);

		} catch (Exception e) {
			modelAndView.addObject("mensagem", e.getMessage());
		}

		return modelAndView;
	}
}
