/*Las niñeras de la sucursal “Quito Norte” justo a su nombre del servicios activo. */
select 
nombre_ninera ||' '|| apellido_ninera as NombreApellido_Niñera,
dir_sucursal,
nombre_servicio,
estado_servicio
from public.ninera
inner join public.sucursal on public.sucursal.id_ninera=public.ninera.id_ninera
inner join public.servicio on public.ninera.id_ninera=public.servicio.id_ninera
inner join public.estado_servicio on public.servicio.id_servicio=public.estado_servicio.id_estado
where sucursal.dir_sucursal='Quito Norte' and estado_servicio.estado_servicio='Activo';


/* Servicios  a un precio mayor a $50 dólares justo al nombre de la niñera.*/
select
nombre_ninera ||' '|| apellido_ninera as NombreApellido_Niñera,
nombre_servicio,
precio_servicio
from
public.ninera inner join public.servicio on public.ninera.id_ninera=public.servicio.id_ninera
where public.servicio.precio_servicio>50;



/*-Registros de los servicios de las niñeras con alta reputación, junto al hijo que atendieron. */
select
nombre_ninera ||' '|| apellido_ninera as NombreApellido_Niñera,
nivel_reputacion,
nombre_servicio,
time_servicio as tiempo,
precio_servicio,
nombre_hijo ||' '|| apellido_hijo as NombreApellido_Hijo
from public.ninera
inner join public.reputacion on public.reputacion.id_ninera=public.ninera.id_ninera
inner join public.servicio on public.ninera.id_ninera=public.servicio.id_ninera
inner join public.padre on public.servicio.id_padre=public.padre.id_padre
inner join public.hijo on public.padre.id_padre=public.hijo.id_hijo
where reputacion.nivel_reputacion='Muy Alta';


/*Cantidad de niñeras en el negocio*/
select count(*) as Total_Ninera from ninera;

/*Mostrar el asistente de la niñera*/
WITH RECURSIVE path(nombre_ninera,apellido_ninera, path, parent, id_ninera, asistente_ninera_id) AS (
SELECT nombre_ninera,apellido_ninera, '/', NULL, id_ninera , asistente_ninera_id FROM ninera 
UNION
SELECT
ninera.nombre_ninera,
ninera.apellido_ninera,
ninera_elementos.path || CASE ninera_elementos.path WHEN '/' THEN '' ELSE '/' END || ninera.nombre_ninera,
ninera_elementos.path, 
ninera.id_ninera, 
ninera.asistente_ninera_id
FROM public.ninera, path as ninera_elementos
WHERE ninera.asistente_ninera_id  = ninera_elementos.id_ninera)
SELECT * FROM path;


