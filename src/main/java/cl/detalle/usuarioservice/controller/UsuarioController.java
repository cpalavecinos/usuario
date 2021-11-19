package cl.detalle.usuarioservice.controller;

import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cl.detalle.usuarioservice.model.Usuario;
import cl.detalle.usuarioservice.service.UsuarioService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

@Component
@RequestMapping("/api/usuario")
@Api(value = "Detalle de usuarios", description = "Proyecto Rest para obtener detalle de usuarios")
@CrossOrigin
public class UsuarioController {

	private Logger logger = LogManager.getLogger(getClass());

	private ResponseEntity response = null;

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping(value = { "/obtieneAllUsuarios" }, produces = "application/json")
	@ApiOperation(value = "Obtiene todos los usuarios", notes = "Se encarga de obtener todos los usuarios activos de BD de horarios", response = Usuario.class)
	@ApiResponses(value = { @ApiResponse(code = 200, message = "Busqueda de todos los usuarios exitosa", response = Usuario.class) })
	public ResponseEntity<Collection<Usuario>> obtieneAllUsuarios() {
		logger.info("Entrando a metodo obtieneAllUsuarios");
		response = usuarioService.obtieneAllUsuario();
		logger.info("Salgo de metodo obtieneAllUsuarios");
		return response;
	}

	@GetMapping(value = { "/obtieneUsuario/{nomUsuario}" }, produces = "application/json")
	@ApiOperation(value = "Obtiene usuario ", notes = "Se encarga de obtener detalle de usuario en base a su nombre de usuario", response = Usuario.class)
	@ApiResponses(value = { @ApiResponse(code = 200, message = "Busqueda de todos los usuarios exitosa", response = Usuario.class) })
	public ResponseEntity<Usuario> obtieneUsuario(@PathVariable("nomUsuario") String nomUsuario) {
		logger.info("Entrando a metodo obtieneUsuario");
		response = usuarioService.obtieneUsuario(nomUsuario);
		logger.info("Salgo de metodo obtieneUsuario");
		return response;
	}

	@GetMapping(value = { "/obtieneUsuarioByIdUsuario/{idUsuario}" }, produces = "application/json")
	@ApiOperation(value = "Obtiene usuario ", notes = "Se encarga de obtener detalle de usuario en base a id de usuario", response = Usuario.class)
	@ApiResponses(value = { @ApiResponse(code = 200, message = "Busqueda de usuario exitosa", response = Usuario.class) })
	public ResponseEntity<Usuario> obtieneUsuarioById(@PathVariable("idUsuario") String idUsuario) {
		logger.info("Entrando a metodo obtieneUsuario");
		response = usuarioService.obtieneUsuarioById(idUsuario);
		logger.info("Salgo de metodo obtieneUsuario");
		return response;
	}

	@GetMapping(value = { "/obtieneUsuariosByIds/{idsUsuario}" }, produces = "application/json")
	@ApiOperation(value = "Obtiene usuarios ", notes = "Se encarga de obtener detalle de usuarios en base a ids", response = Usuario.class)
	@ApiResponses(value = { @ApiResponse(code = 200, message = "Busqueda de usuarios exitosa", response = Usuario.class) })
	public ResponseEntity<Collection<Usuario>> obtieneUsuariosById(@PathVariable("idsUsuario") String idsUsuario) {
		logger.info("Entrando a metodo obtieneUsuariosById");
		List<Integer> ids = Arrays.asList(idsUsuario.split(",")).stream().map(s -> Integer.parseInt(s.trim())).collect(Collectors.toList());
		response = usuarioService.obtieneUsuariosById(ids);
		logger.info("Salgo de metodo obtieneUsuariosById");
		return response;
	}
}
