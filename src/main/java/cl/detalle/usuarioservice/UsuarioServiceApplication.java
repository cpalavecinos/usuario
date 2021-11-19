package cl.detalle.usuarioservice;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class UsuarioServiceApplication {
Logger logger = LogManager.getLogger(getClass());
	
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		logger.info("");
        return builder.sources(UsuarioServiceApplication.class);
    }
	
	public static void main(String[] args) {
		SpringApplication.run(UsuarioServiceApplication.class, args);
	}
}
