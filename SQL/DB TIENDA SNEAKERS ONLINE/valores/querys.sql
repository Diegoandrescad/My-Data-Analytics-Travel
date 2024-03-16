--consultar a la base de datos el total de ventas por metodo de pago
select metodo_pago.tipo as tipo_pago, sum(pedido.total) as total
from metodo_pago join pedido on metodo_pago.id_metodo = pedido.id_metodo
group by tipo_pago
order by total desc;

--consultar a la base de datos los 5 usuarios que han realizado mas compras
select usuario.id_usuario as ID, usuario.nombre, usuario.apellido, count (*) as cantidad_compras
from usuario join pedido on usuario.id_usuario = pedido.id_usuario
group by id
order by cantidad_compras DESC limit 5;

-- consultar a la base de datos el promedio de total de ventas por año agrupados por metodo de pago
select extract (year from pedido.fecha_pedido) as year,
metodo_pago.tipo as metodo_pago, avg (pedido.total:: numeric) as promedio_ventas
from pedido join metodo_pago on metodo_pago.id_metodo = pedido.id_metodo
group by metodo_pago, year;

-- consultar a la base de datos el total de envios por año
select extract (year from fecha_envio) as year, count(*) as total_envios from envio
group by year
order by year asc;

-- consultar a la base de datos los usuarios que aún no han realizado pedidos
select usuario.nombre, usuario.apellido
from usuario left join pedido on usuario.id_usuario = pedido.id_usuario
where pedido.id_pedido is NULL;

-- consultar a la base de datos el total de ventas mensual
select to_char(fecha_pedido, 'YYYY-MM') as mes, sum(total) from pedido
group by mes order by mes desc;

-- consultar a la base de datos el metodo de pago más utilizado por cada usuario
select usuario.nombre, usuario.apellido, metodo_pago.tipo, count (*) as cantidad_usos
from pedido join usuario on 
usuario.id_usuario = pedido.id_usuario join metodo_pago on pedido.id_metodo = metodo_pago.id_metodo
group by usuario.nombre, usuario.apellido, metodo_pago.tipo
order by usuario.nombre, cantidad_usos desc;

-- consultar a la base de datos el numero de pedidos por dia de la semana
select extract (dow from fecha_pedido) as dia, count (*) as numero_pedidos from pedido 
group by dia
order by dia;

-- consultar a la base de datos el promedio de tiempo de envio por año
select extract (year from envio.fecha_envio) as year, avg(extract (EPOCH from (envio.fecha_envio - pedido.fecha_pedido))) as promedio
from envio join pedido on envio.id_pedido = pedido.id_pedido
group by year
order by year desc;

-- consultar a la base de datos el promedio de pedidos por mes
select extract (month from fecha_pedido) as mes, avg(total::NUMERIC) as promedio_pedido
from pedido group by mes order by mes;

-- consultar a la base de datos cantidad de pedidos por hora del día
select extract (hour from fecha_pedido) as hora_del_dia, count(*) as cantidad_pedidos
from pedido group by hora_del_dia order by cantidad_pedidos desc;

-- consultar a la base de datos los 5 productos más vendidos
select producto.nombre, producto.marca, producto.precio, count(*) as cantidad from producto join producto_pedido on
producto.id_producto = producto_pedido.id_producto group by producto.id_producto order by cantidad desc limit 5;