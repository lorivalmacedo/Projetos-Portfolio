# Projeto de Banco de Dados de E-commerce

	- Contexto: Levantamento de requisitos
	- Projeto Conceitual: Modelo das entidades e relacionamentos
	- Projeto Lógico: Modelo relacional

# Modelando E-COMMERCE:
### Produto:
	- Fornecedores vendem produtos em uma única plataforma online
	- Um mesmo produto pode ter mais de um fornecedor
	- Um ou mais produtos podem compor o pedido

### Cliente:
	- O cliente pode se cadastrar no site com seu CPF ou CNPJ
	- O endereço do cliente irá determinar o valor do frete
	- Um cliente pode comprar mais de um pedido. Este tem um período de carência para devolução do produto

### Pedido:
	- Os pedidos são criados por clientes e possuem informações de compra, endereço e status da entrega
	- Um produto ou mais compõem o pedido
	- O pedido pode ser cancelado

### Estoque:
	- Cada fornecedor tem seus estoques declarados
 	- Um fornecedor pode ter mais de um estoque

## Entidades: 
- Cliente, Pedido, Produto, Fornecedor e Estoque

# Refinamento:
	- Cliente PJ e PF - Uma conta pode ser PJ ou PF, mas não pode ter as duas informações
	- Pagamento - Pode ter cadastrado mais de uma forma de pagamento
	- Entrega - possui status e código de restreio

## Software usado para modelagem
**MySQL Workbench**
