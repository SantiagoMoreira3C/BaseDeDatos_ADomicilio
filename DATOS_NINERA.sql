/*Insertando datos en la tabla padre*/

insert into padre values(1,'Alejandro','Torres','Ave 300','2921120','09874566941','atorres@gmail.com');
insert into padre values(2,'Hugo','Alvia','Ave 110','2234230','0933556544','halvia@gmail.com');
insert into padre values(3,'Pablo','Baque','Ave 216','2255454','09548796941','pbaque@gmail.com');
insert into padre values(4,'Julisa','Perez','Ave 310','2223249','0973194112','jperez@gmail.com');
insert into padre values(5,'Vicente','Arauz','Ave 117','2255880','0967114844','varauz@gmail.com');
insert into padre values(6,'Oliver','Louis','Ave 555','2163400','09009725365','olouis@gmail.com');
insert into padre values(7,'Ignacio','Moncayo','Ave 234','2117278','0973816729','imoncayo@gmail.com');
insert into padre values(8,'Omar','Angel','Ave 337','2151251','0917213461','oangel@gmail.com');
insert into padre values(9,'Nestor','Bidal','Ave 671','2132788','09119882835','nbidal@gmail.com');
insert into padre values(10,'Sebastian','Herrera','Ave 99','2137211','0923419220','sherrera@gmail.com');

/*Insertando datos en la tabla hijo*/
insert into hijo values(1,'George','Torres','08-06-2018',1);
insert into hijo values(2,'Mateo','Alvia','25-01-2019',2);
insert into hijo values(3,'Alisson','Baque','04-05-2019',3);
insert into hijo values(4,'Markel','Perez','17-04-2017',4);
insert into hijo values(5,'David','Arauz','25-12-2018',5);
insert into hijo values(6,'Andrea','Louis','01-02-2020',6);
insert into hijo values(7,'Carla','Moncayo','06-05-2019',7);
insert into hijo values(8,'Samuel','Angel','19-05-2019',8);
insert into hijo values(9,'Antonio','Bidal','11-08-2019',9);
insert into hijo values(10,'Paul','Herrera','22-07-2018',10);


/*Insertando datos en la tabla detalle_hijo*/

insert into detalle_hijo values(1,'Polvo','Cetirizina','Dr. Juan Martinez',1);
insert into detalle_hijo values(2,'Soja','Antihistamínicos','Dr. Luis Parraga',2);
insert into detalle_hijo values(3,'Maní','Palforzia','Dr. Wilson Zambrano',3);
insert into detalle_hijo values(4,'Lactosa','Adrenaclick','Dr. Francisco Lopez',4);
insert into detalle_hijo values(5,'Telas','Ebastel','Dr. Jose July',5);
insert into detalle_hijo values(6,'Frutos secos','Levocetirizina','Dr. Lorena Caicedo',6);
insert into detalle_hijo values(7,'Látex','Antihistamínicos','Dr. Nancy Bazurto',7);
insert into detalle_hijo values(8,'Anafilaxia','Opiáceos','Dr. Fredy July',8);
insert into detalle_hijo values(9,'Frutos secos','Levocetirizina','Dr. Alan Nelson',9);
insert into detalle_hijo values(10,'Látex','Antihistamínicos','Dr. Tadeo Mueler',10);


/*Insertando datos en la tabla ninera*/

insert into ninera values(1,'Veronica','Tuarez','La Floresta','01-09-1980','01-09-2013',null);
insert into ninera values(2,'Paula','Molina','La Mariscal','30-11-1978','21-12-2013',null);
insert into ninera values(3,'Luciana','Morris','Quitumbe','24-10-1987','23-01-2015',null);
insert into ninera values(4,'Cloe','Sullivan','Cornejo','09-02-1990','15-02-2014',null);
insert into ninera values(5,'Leyla','Garcia','El Camal','26-05-1993','21-12-2018',1);
insert into ninera values(6,'Liza','Rivera','El Panecillo','03-02-1995','04-08-2019',3);
insert into ninera values(7,'Sheyla','Morales','El Pintado','17-07-1996','19-05-2019',4);

/*Insertando datos en la tabla reputacion*/

insert into reputacion values(1,'Muy Alta',1);
insert into reputacion values(2,'Muy Alta',2);
insert into reputacion values(3,'Alta',3);
insert into reputacion values(4,'Alta',4);
insert into reputacion values(5,'Regular',5);
insert into reputacion values(6,'Regular',6);
insert into reputacion values(7,'Regular',7);

/*Insertando datos en la tabla habilidad*/

insert into habilidad values(1,'Guía para dejar el pañal',1);
insert into habilidad values(2,'Fundamentos del gateo',2);
insert into habilidad values(3,'Etapas de desarrollo',3);
insert into habilidad values(4,'Sueño infantil',4);
insert into habilidad values(5,'Guía preescolar',5);
insert into habilidad values(6,'Juego dinámicos',6);
insert into habilidad values(7,'Sobreprotección',7);


/*Insertando datos en la tabla sucursal*/

insert into sucursal values(1,'Quito Norte','0984606224',1);
insert into sucursal values(2,'Quito Sur','0987750836',2);
insert into sucursal values(3,'Quito Norte','0984606224',3);
insert into sucursal values(4,'Quito Sur','0987750836',4);
insert into sucursal values(5,'Quito Norte','0981127416',5);
insert into sucursal values(6,'Quito Norte','0914488144',6);
insert into sucursal values(7,'Quito Sur','093758525',7);


/*Insertando datos en la tabla servicio*/

insert into servicio values(1,'Niñera permanente', 885.99,'12 Meses',1,1);
insert into servicio values(2,'Niñera por hora', 15.00,'1 Hora',2,2);
insert into servicio values(3,'Niñera especializada', 150.70,'1 Semana',3,3);
insert into servicio values(4,'Niñera por hora', 45.00,'3 Horas',4,4);
insert into servicio values(5,'Niñera por especializada', 380.00,'1 Mes',5,5);
insert into servicio values(6,'Niñera por hora', 75.00,'5 Horas',6,6);
insert into servicio values(7,'Niñera por hora', 60.00,'4 Horas',7,7);
insert into servicio values(8,'Niñera por hora', 30.00,'2 Horas',8,1);
insert into servicio values(9,'Niñera por hora', 45.00,'3 Horas',9,2);
insert into servicio values(10,'Niñera por hora', 15.00,'1 Hora',10,3);


/*Insertando datos en la tabla estado_servicio*/

insert into estado_servicio values(1,'Activo',1);
insert into estado_servicio values(2,'Activo',2);
insert into estado_servicio values(3,'Inactivo',3);
insert into estado_servicio values(4,'Activo',4);
insert into estado_servicio values(5,'Activo',5);
insert into estado_servicio values(6,'Activo',6);
insert into estado_servicio values(7,'Inactivo',7);
insert into estado_servicio values(8,'Inactivo',8);
insert into estado_servicio values(9,'Inactivo',9);
insert into estado_servicio values(10,'Activo',10);
