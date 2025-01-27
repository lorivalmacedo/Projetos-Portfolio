-- Relação de nomes dos fornecedores e nomes dos produtos;
with resultado as(
	select DISTINCT fornecedor.RazaoSocial, produto.Nome
    from estoque
    left join fornecedor on estoque.Fornecedor_idFornecedor = fornecedor.idFornecedor
    left join produto on estoque.Produto_IDProduto = produto.IDProduto
)
select *
from resultado