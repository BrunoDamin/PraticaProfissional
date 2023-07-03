INSERT INTO Paises (codPais, nomePais, siglaPais, ddiPais, moedaPais, datCadastro, ultAlteracao)
values (1, 'Brasil', 'BR', '+55', 'R$', '', '');

INSERT INTO Estados (codEstado, nomeEstado, ufEstado, codPais, datCadastro, ultAlteracao)
values (1, 'Paraná', 'PR', 1, '', '');

INSERT INTO Cidades (codCidade, nomeCidade, dddCidade, codEstado, datCadastro, ultAlteracao)
values (1, 'Foz do Iguaçu', '+45', 1, '', '');

INSERT INTO Clientes (codCliente, nomeCliente, tipoCliente, documentoCliente, ruaCliente, numeroRuaCliente, bairroCliente, cepCliente, codCidade, datCadastro, ultAlteracao) values
(1, 'Roberto', 'PF', '06712354409', 'Rua das Figueiras', '1043', 'Centro', '85851-260', 1, '', '');

INSERT INTO Fornecedores (codFornecedor, nomeFornecedor, documentoFornecedor, ruaFornecedor, numeroRuaFornecedor, bairroFornecedor, cepFornecedor, codCidade, datCadastro, ultAlteracao) values
(1, 'Cosméticos Santana', '06712354409', 'Rua das Palmeiras', '781', 'Vila Portes', '85848-420', 1, '', '');

INSERT INTO Funcionarios (codFuncionario, nomeFuncionario, tipoFuncionario, salarioFuncionario, datCadastro, ultAlteracao) values
(1, 'Jorge', 'Motorista', 2500, '', '');

INSERT INTO Mercadorias (codMercadoria, nomeMercadoria, tipoMercadoria, quantidadeMercadoria, valorMercadoria, codFornecedor, datCadastro, ultAlteracao) values
(1, 'Água com Gás', 'Líquido Consumível Não Alcoólico', 25, 50, 1,'', '');

INSERT INTO Entregas (codEntrega, codMercadoria, codCliente, codFuncionario, datCadastro, ultAlteracao) values
(1, 1, 1, 1, '', '');
