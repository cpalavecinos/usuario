


Conectarse con el user1
    
LOGIN POSTGRES USER
psql -U postgres


CREAR BASE DE DATOS Y USAURIOS 
CREATE DATABASE horarios_desa;

CREATE ROLE hordesa superuser;

ALTER ROLE hordesa WITH LOGIN;    
   
alter user hordesa with encrypted password 'Cusquena';

SALIR 
\q


psql -d horarios_desa -U hordesa


CREATE TABLE public.usuario (
	id_usuario int4 NOT NULL,
	nombre_usuario varchar(50) NULL,
	clave varchar(50) NULL,
	privilegio varchar(50) NULL,
	estado varchar(50) NULL,
	fecha_ingreso date NULL,
	fecha_modificacion date NULL,
	id_usuario_ingreso int4 NULL,
	ingreso_hora varchar(50) NULL,
	correo varchar(255) NULL,
	horas_diarias numeric(11,2) NULL,
	last_login date NULL,
	gerencia varchar(50) NULL,
	rut_numero int4 NULL,
	rut_dv varchar(1) NULL,
	nombre_completo varchar(255) NULL,
	ind_account_manager int2 NOT NULL DEFAULT 0,
	fecha_inicio date NULL,
	ind_pmo int2 NOT NULL DEFAULT 0,
	perfil_linkedin varchar(255) NULL,
	telefono_oficina varchar(50) NULL,
	telefono_movil varchar(50) NULL,
	correo_personal varchar(255) NULL,
	telefono_casa varchar(50) NULL,
	observacion varchar(2048) NULL,
	fecha_modificacion_datos_personales date NULL,
	fecha_modificacion_conocimientos date NULL,
	id_empresa int4 NULL,
	ind_ingreso_hora int2 NOT NULL DEFAULT 1,
	ind_activo int2 NOT NULL DEFAULT 1,
	ind_acceso int2 NULL DEFAULT 1,
	fecha_inicio_vacaciones_progresivas date NULL,
	fecha_inicio_contrato date NULL,
	ind_dias_administrativos int2 NULL DEFAULT 0,
	fecha_termino_contrato date NULL,
	ind_usuario_externo int2 NULL DEFAULT 0,
	ind_extranjero int2 NULL DEFAULT 0,
	ind_oficina int2 NULL DEFAULT 0,
	sexo varchar(50) NULL,
	fecha_nacimiento date NULL,
	CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario)
);


INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(345,'cmacaya',NULL,'usuario','activo','2013-10-21','2015-03-12',43,'tiempo','cristian.macaya@tecnova.cl',8.50,'2014-01-10','outsourcing',16200885,'4','Cristian Macaya',0,'2013-10-21',0,'','','',NULL,'','','2015-03-12',NULL,NULL,1,1,0,NULL,NULL,0,'2014-01-15',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(297,'wcontrerasm',NULL,'usuario','activo','2013-04-15','2014-01-09',43,'tiempo','william.contreras@tecnova.cl',8.50,NULL,'desarrollo',11127509,'2','William Contreras Morales',0,'2013-04-01',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,NULL,0,'2013-12-31',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(226,'ngonzalez',NULL,'usuario','activo','2012-07-23','2014-03-31',43,'tiempo','nelson.gonzalez@tecnova.cl',8.50,'2014-03-27','desarrollo',15188122,'K','Nelson Gonzalez',0,'2012-06-20',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,NULL,0,'2014-03-31',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(682,'pzunigac',NULL,'usuario','activo','2016-10-17','2017-01-16',43,'tiempo','pzunigac@tecnova.cl',8.00,'2016-10-24','outsourcing',12267060,'0','Pablo Zuñiga Catalan',0,'2016-10-24',0,'','','',NULL,'','','2017-01-16',NULL,NULL,1,1,1,NULL,'2016-10-24',0,'2016-12-29',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(186,'scontreras',NULL,'usuario','activo','2011-10-05','2015-03-09',43,'tiempo','sergio.contreras@tecnova.cl',8.50,'2015-02-12','outsourcing',7733781,'4','Sergio Contreras Peralta',0,'2011-10-06',0,'cl.linkedin.com/pub/sergio-contreras-peralta/16/26a/75','','51374533',NULL,'','Renuncia el 13/02, antes que terminara su faena','2015-03-09',NULL,NULL,1,1,0,NULL,NULL,0,'2015-02-13',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(283,'wtorress',NULL,'usuario','activo','2013-03-04','2013-12-20',107,'tiempo','williams.torres@tecnova.cl',8.50,'2013-11-28','desarrollo',17305751,'2','Williams Torres Silva',0,'2013-03-04',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,NULL,0,'2013-11-29',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(708,'nmunozm',NULL,'usuario','activo','2016-11-21','2017-02-13',43,'tiempo','nmunozm@tecnova.cl',8.50,'2016-12-05','outsourcing',16726177,'9','Nabelka Muñoz Muñoz',0,'2016-11-01',0,'','','982264951',NULL,'','Se extiende contrato por mes de Enero 2017','2017-02-13',NULL,NULL,1,1,1,NULL,'2017-01-01',0,'2017-01-31',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(702,'recheverrir',NULL,'usuario','activo','2016-11-15','2017-04-10',43,'tiempo','recheverrir@tecnova.cl',8.00,'2017-03-28','outsourcing',22114011,'7','Ruben Echeverri Rodriguez',0,'2016-11-14',0,'','','968368856',NULL,'','Se extiende faena hasta el 31-03-2017','2017-04-10',NULL,NULL,1,1,1,NULL,'2016-11-14',0,'2017-03-28',0,0,NULL,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(660,'rfernandeza',NULL,'usuario','activo','2016-09-29','2017-05-10',573,'tiempo','rfernandeza@tecnova.cl',8.50,'2017-03-16','outsourcing',12621497,'9','Ronny Fernandez Alvarado',0,'2016-09-27',0,'','','997075648',NULL,'','','2017-05-10',NULL,NULL,1,1,1,NULL,'2016-09-27',0,'2017-04-28',0,0,0,NULL,NULL);

INSERT INTO usuario (id_usuario,nombre_usuario,clave,privilegio,estado,fecha_ingreso,fecha_modificacion,id_usuario_ingreso,ingreso_hora,correo,horas_diarias,last_login,gerencia,rut_numero,rut_dv,nombre_completo,ind_account_manager,fecha_inicio,ind_pmo,perfil_linkedin,telefono_oficina,telefono_movil,correo_personal,telefono_casa,observacion,fecha_modificacion_datos_personales,fecha_modificacion_conocimientos,id_empresa,ind_ingreso_hora,ind_activo,ind_acceso,fecha_inicio_vacaciones_progresivas,fecha_inicio_contrato,ind_dias_administrativos,fecha_termino_contrato,ind_usuario_externo,ind_extranjero,ind_oficina,sexo,fecha_nacimiento) VALUES
(904,'ccanasb',NULL,'usuario','activo','2018-07-17','2018-11-28',116,'tiempo','ccanasb@tecnova.cl',8.50,'2018-10-01','desarrollo',15448524,'4','Cristian Cañas Bobadilla',0,'2018-07-18',0,'','','966696723','cristian.canas.bobadilla@gmail.com','','Ingeniero Desarrollo','2018-11-28',NULL,NULL,1,1,1,NULL,'2018-07-18',0,'2018-11-05',0,0,0,NULL,NULL);



