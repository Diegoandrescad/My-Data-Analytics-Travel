-- consultar a la base de datos cantidad de productos comprados y validarlos aquellos
--adquiridos mas de nueve veces como producto muy demandado
select producto.nombre, producto.marca, count(producto_pedido.id_producto) as cantidad,
case when count(producto_pedido.id_producto) > 9 then 'producto muy demandado'
else 'producto poco demandado'
end from producto_pedido join producto on producto_pedido.id_producto = producto.id_producto
group by producto.nombre, producto.marca,producto_pedido.id_producto;

-- consultar a la base de datos cantidad de usuarios que han pedido productos
-- validando aquellos que han hecho mas de tres pedidos como clientes recurrentes
select usuario.nombre, usuario.apellido, count (pedido.id_usuario), 
case when count(pedido.id_usuario) >= 3
then 'cliente recurrente' else 'cliente poco recurrente' end
from pedido join usuario on usuario.id_usuario = pedido.id_usuario
group by usuario.nombre, usuario.apellido;
