-- Algum cliente também é fornecedor?
with resultado AS(
	select cliente.idCliente, cliente.Nome, cliente.Email, fornecedor.idFornecedor
    from cliente
    inner join fornecedor on cliente.Email = fornecedor.Email
)
select *
from resultado
order by idCliente asc;