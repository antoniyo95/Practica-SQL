--- Consulta SQL de segunda parte de Práctica SQL
select
a.idVehiculo,
b.nombreModelo as Modelos,
c.nombreMarca as Marcas,
d.nombreGrupoEmp as Grupo_Empresarial,
matricula,
e.nombreColor as Color,
kmTotales,
f.nombreAseguradora as Aseguradora,
numPoliza,
fechaCompra

from practica_sql.vehiculos a
right join practica_sql.modelo b
on a.idModelo = b.idModelo

join practica_sql.marca c
on b.idMarca = c.idMarca

join practica_sql.grupo_empresarial d
on c.idGrupoEmp = d.idGrupoEmp

left join practica_sql.color e
on a.idColor = e.idColor

left join practica_sql.aseguradora f
on a.idAseguradora = f.idAseguradora