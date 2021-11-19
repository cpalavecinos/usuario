package cl.detalle.usuarioservice.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import io.swagger.annotations.Api;
import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL)
@Api
@Entity
public class Usuario {
	

	@Id
	private Integer idUsuario;
	
	private String nombreCompleto;
	private String privilegio;
	private String correo;
	
	public Usuario() {}
}
