package cl.detalle.usuarioservice.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import cl.detalle.usuarioservice.model.Usuario;

public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

	@Query(value = "select usu.id_usuario, usu.nombre_completo, usu.privilegio, usu.correo from usuario usu where usu.estado = 'activo' order by usu.nombre_completo asc", nativeQuery = true)
	public List<Usuario> obtieneAllUsuarios();

	@Query(value = "select usu.id_usuario, usu.nombre_completo, usu.privilegio, usu.correo from usuario usu where usu.nombre_usuario = ?", nativeQuery = true)
	public Usuario obtieneUsuario(String nomUsuario);

	@Query(value = "select usu.id_usuario, usu.nombre_completo, usu.privilegio, usu.correo from usuario usu where usu.id_usuario = ?", nativeQuery = true)
	public Usuario obtieneUsuarioById(Integer idUsuario);

	@Query(value = "select usu.id_usuario, usu.nombre_completo, usu.privilegio, usu.correo from usuario usu where usu.id_usuario in :idsUsuario", nativeQuery = true)
	public List<Usuario> obtieneUsuariosById(@Param("idsUsuario") List<Integer> idsUsuario);

}
