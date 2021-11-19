package cl.detalle.usuarioservice.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import cl.detalle.usuarioservice.model.Usuario;
import cl.detalle.usuarioservice.repository.UsuarioRepository;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioRepository usuarioRepository;

	public ResponseEntity<Collection<Usuario>> obtieneAllUsuario() {
		return new ResponseEntity<>(usuarioRepository.obtieneAllUsuarios(), HttpStatus.OK);
	}

	public ResponseEntity<Usuario> obtieneUsuario(String nomUsuario) {
		return new ResponseEntity<>(usuarioRepository.obtieneUsuario(nomUsuario), HttpStatus.OK);
	}

	public ResponseEntity<Usuario> obtieneUsuarioById(String idUsuario) {
		return new ResponseEntity<>(usuarioRepository.obtieneUsuarioById(Integer.valueOf(idUsuario)), HttpStatus.OK);
	}

	public ResponseEntity<Collection<Usuario>> obtieneUsuariosById(List<Integer> idsUsuario) {
		return new ResponseEntity<>(usuarioRepository.obtieneUsuariosById(idsUsuario), HttpStatus.OK);
	}
}
