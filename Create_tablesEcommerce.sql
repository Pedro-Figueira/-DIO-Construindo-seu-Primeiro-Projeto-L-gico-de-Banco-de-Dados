-- criação do banco de dados para o cenário de E-commerce

-- create database ecommmerce;

use ecommmerce;

-- criar tabela cliente
create table client(
       idClient int auto_increment primary key,
       Pnome varchar(10),
	   NmeioInicial char(3),
       Sobrenome varchar(45),
       CPF char(11) not null,
       Endereco varchar(45),
       DataDeNascimento date,
       constraint unique_cliente unique(CPF)
       );
-- criar tabela produto

create table product(
       idProduct int auto_increment primary key,
       Categoria varchar(45),
	   Descrição char(45),
       Valor float
	  );

-- criar tabela pedido

create table orders(
       idorders int auto_increment primary key,
       ordersStatus ENUM("Em andamento", "Processando", "Enviado", "Entregue", "Cancelado"),
	   Cliente_idCliente int,
       ordersStatusDoPedido varchar(45)
	  );
      

-- criar tabela estoque

create table storage(
	   idEstoque int auto_increment primary key,
       Local varchar(45));
       


-- criar tabela pagamentos

create table payments(
       idcliente int,
       idPayment int,
       typePayment enum("Boleto","Cartão","Dois Cartões"),
       limitAvaible float,
       primary key(idCliente,idpayment)
	  );

-- criar tabela Fornecedor

create table supplier(
       idProduct int auto_increment primary key,
       NomeDoFornecedor varchar(45),
       CNPJ CHAR(15) NOT NULL
	  );
      


-- criar tabela Vendedor

create table seller(
       idTerceiroVendedor int auto_increment primary key,
       NomeFantasia varchar(45),
       RazãoSocial  varchar(45) not null,
       Local   varchar(45),
       constraint unique_RazãoSocial_seller unique (RazãoSocial)
	  );
      
-- criar tabela Produto vendedor

create table productseller(
       Produto_idProduto int ,
       TerceiroVendedor_idTerceirVendedor int ,
       constraint fk_product_product foreign key (Produto_idProduto) references  product(idProduct),
       constraint fk_product_seller foreign key (TerceiroVendedor_idTerceirVendedor) references seller(idTerceiroVendedor)
	  );


-- criar tabela Produto e Pedido

create table productOrder(
       Produto_idProduto int ,
       Pedido_idPedido int ,
       Quantidade varchar(45) ,
       Status ENUM("disponivel", "sem estoque"),
       primary key (Produto_idProduto,Pedido_idPedido),
       Constraint fk_product_Order foreign key (Produto_idProduto) references product(idProduct),
       Constraint fk_product_Pedido foreign key (Pedido_idPedido) references orders(idorders)
	  );
      
-- criar tabela Estoque e Produto

create table storageLocation(
       Estoque_idEstoque int ,
       Produto_idProduto int ,
       primary key (Estoque_idEstoque,Produto_idProduto),
       Constraint fk_product_Estoque foreign key (Estoque_idEstoque) references product(idProduct),
       Constraint fk_Estoque_product foreign key (Produto_idProduto) references orders(idorders)
	  );
      