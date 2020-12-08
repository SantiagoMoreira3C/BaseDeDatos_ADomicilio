/* TABLA: PADRE */
CREATE  TABLE PADRE(
id_padre smallint PRIMARY KEY NOT NULL,
nombre_padre varchar(50),
apellido_padre varchar(50),
dir_padre varchar(50),
num_domi_padre varchar(50),
tel_padre varchar(50),
email_padre varchar(50)
);

/* TABLA: HIJO */
CREATE  TABLE HIJO(
id_hijo smallint PRIMARY KEY NOT NULL,
nombre_hijo varchar(50),
apellido_hijo varchar(50),
fecha_nacimiento_hijo timestamp,
id_padre smallint,
CONSTRAINT id_padre_fk FOREIGN KEY (id_padre) REFERENCES padre(id_padre)
   ON DELETE RESTRICT ON UPDATE CASCADE
);


/* TABLA: DETALLE_HIJO */
CREATE  TABLE DETALLE_HIJO(
id_detalle_hijo smallint PRIMARY KEY NOT NULL,
alergia_hijo varchar(50),
medicamente_hijo varchar(50),
doctor_hijo varchar(50),
id_hijo smallint,
CONSTRAINT id_hijo_fk FOREIGN KEY (id_hijo) REFERENCES hijo(id_hijo)
   ON DELETE RESTRICT ON UPDATE CASCADE
);


/* TABLA: NIÑERA */
CREATE  TABLE NINERA(
id_ninera smallint PRIMARY KEY NOT NULL,
nombre_ninera varchar(50),
apellido_ninera varchar(50),
dir_ninera varchar(50),
fecha_nacimiento_ninera timestamp,
fechaingreso_ninera timestamp,
asistente_ninera_id smallint REFERENCES ninera(id_ninera)
);


/* TABLA: REPUTACION */
CREATE  TABLE REPUTACION(
id_reputacion smallint PRIMARY KEY NOT NULL,
nivel_reputacion varchar(50),
id_ninera smallint,
CONSTRAINT id_ninera_fk FOREIGN KEY (id_ninera) REFERENCES ninera(id_ninera)
   ON DELETE RESTRICT ON UPDATE CASCADE
);

/* TABLA: HABILIDAD */
CREATE  TABLE HABILIDAD(
id_habilidad smallint PRIMARY KEY NOT NULL,
detalle_habilidad varchar(50),
id_ninera smallint,
CONSTRAINT id_ninera_fk FOREIGN KEY (id_ninera) REFERENCES ninera(id_ninera)
   ON DELETE RESTRICT ON UPDATE CASCADE
);

/* TABLA: SUCURSAL */
CREATE  TABLE SUCURSAL(
id_sucursal smallint PRIMARY KEY NOT NULL,
dir_sucursal varchar(50),
tel_sucursal varchar(50),
id_ninera smallint,
CONSTRAINT id_ninera_fk FOREIGN KEY (id_ninera) REFERENCES ninera(id_ninera)
   ON DELETE RESTRICT ON UPDATE CASCADE
);

/* TABLA: SERVICIO */
CREATE  TABLE SERVICIO(
id_servicio smallint PRIMARY KEY NOT NULL,
nombre_servicio varchar(50),
precio_servicio numeric(5,2),
time_servicio varchar(50),
id_padre smallint,
id_ninera smallint,
CONSTRAINT id_padre_fk FOREIGN KEY (id_padre) REFERENCES padre(id_padre)
   ON DELETE RESTRICT ON UPDATE CASCADE,
CONSTRAINT id_ninera_fk FOREIGN KEY (id_ninera) REFERENCES ninera(id_ninera)
   ON DELETE RESTRICT ON UPDATE CASCADE
);


/* TABLA: ESTADO_SERVICIO */
CREATE  TABLE ESTADO_SERVICIO(
id_estado smallint PRIMARY KEY NOT NULL,
estado_servicio varchar(50),
id_servicio smallint,
CONSTRAINT id_estado_servicio_fk FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio)
   ON DELETE RESTRICT ON UPDATE CASCADE
);








