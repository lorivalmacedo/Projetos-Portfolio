-- Quantos pedidos foram feitos por cada cliente?
with count_pedidos AS(
	select cliente.Nome, cliente.Email, count(pedido.IDPedido) as qtd_pedidos
	from pedido
	left join cliente on pedido.Cliente_idCliente = cliente.idCliente
	group by 1, 2
)
select *
from count_pedidos
order by qtd_pedidos desc;