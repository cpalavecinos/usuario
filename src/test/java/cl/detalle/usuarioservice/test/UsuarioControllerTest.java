package cl.detalle.usuarioservice.test;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.DefaultMockMvcBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.ObjectMapper;

import cl.detalle.usuarioservice.UsuarioServiceApplication;
import cl.detalle.usuarioservice.repository.UsuarioRepository;
import cl.detalle.usuarioservice.service.UsuarioService;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = UsuarioServiceApplication.class)
@SpringBootTest
public class UsuarioControllerTest {
	
	private MockMvc mockMvc;
	private ObjectMapper mapper = new ObjectMapper();
	
	@Autowired
	private WebApplicationContext wac;
	
	@Mock
	private UsuarioService service;
	
	@Mock
	private UsuarioRepository repository;
	
	@Before
	public void setup () {
		DefaultMockMvcBuilder builder = MockMvcBuilders.webAppContextSetup(this.wac);
		this.mockMvc = builder.build();		
		repository.deleteAll();
	}
	
	@Test
	public void obtieneAllUsuarios() throws Exception{	
		MockHttpServletRequestBuilder builder = MockMvcRequestBuilders.get("/api/usuario/obtieneAllUsuarios");
		this.mockMvc.perform(builder)
				.andExpect(MockMvcResultMatchers.status().isOk())
				.andExpect(content().contentType(MediaType.APPLICATION_JSON_UTF8))
				.andDo(MockMvcResultHandlers.print());
	}
}
