-- Criação da tabela pessoas
CREATE TABLE pessoas (
  cpf VARCHAR(50) PRIMARY KEY,
  nome VARCHAR(50),
  senha VARCHAR(50)
);


INSERT INTO pessoas (cpf, nome, senha) VALUES ('62373015357', 'Carlos Silva', '4313');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('59259420989', 'Ana Souza', '5325');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('33806805405', 'João Oliveira', '7438');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('55913110950', 'Mariana Lima', '5907');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('08443292513', 'Lucas Pereira', '6553');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('66158994472', 'Fernanda Alves', '7027');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('83071039659', 'Rafael Costa', '3219');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('32854553713', 'Patrícia Dias', '1355');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('75942427616', 'Bruno Rocha', '1734');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('28310319638', 'Juliana Martins', '2933');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('45886372159', 'Marcelo Fernandes', '6844');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('18629827668', 'Renata Cardoso', '2889');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('40635600889', 'Eduardo Ribeiro', '3251');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('75410241446', 'Aline Castro', '8117');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('41140872700', 'Paulo Rocha', '8749');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('54594196514', 'Márcia Santos', '6388');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('24956623929', 'Felipe Nunes', '4197');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('21796634842', 'Carla Souza', '6633');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('43788052111', 'Bruna Mendes', '8409');
INSERT INTO pessoas (cpf, nome, senha) VALUES ('32575385119', 'Thiago Alves', '7134');

-- Criação da tabela contas (caso ainda não tenha executado)
DROP TABLE IF EXISTS contas;

CREATE TABLE contas (
  numeroConta VARCHAR(50) PRIMARY KEY,
  tipoConta VARCHAR(8),
  saldo DECIMAL(10,2),
  cpf VARCHAR(50),
  FOREIGN KEY (cpf) REFERENCES pessoas(cpf)
);

-- Inserções de contas vinculadas aos CPFs da tabela pessoas
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10001-1', 'Corrente', 1500.50, '62373015357');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10002-2', 'Poupança', 3200.75, '59259420989');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10003-3', 'Corrente', 980.20, '33806805405');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10004-4', 'Poupança', 4100.00, '55913110950');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10005-5', 'Corrente', 2750.90, '08443292513');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10006-6', 'Corrente', 1420.00, '66158994472');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10007-7', 'Poupança', 1980.85, '83071039659');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10008-8', 'Corrente', 3160.45, '32854553713');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10009-9', 'Poupança', 2630.00, '75942427616');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10010-0', 'Corrente', 825.75, '28310319638');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10011-1', 'Corrente', 4300.00, '45886372159');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10012-2', 'Poupança', 1120.25, '18629827668');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10013-3', 'Corrente', 3890.80, '40635600889');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10014-4', 'Corrente', 2950.00, '75410241446');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10015-5', 'Poupança', 1780.90, '41140872700');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10016-6', 'Corrente', 2330.70, '54594196514');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10017-7', 'Poupança', 3600.25, '24956623929');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10018-8', 'Corrente', 1870.50, '21796634842');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10019-9', 'Corrente', 2110.00, '43788052111');
INSERT INTO contas (numeroConta, tipoConta, saldo, cpf) VALUES ('10020-0', 'Poupança', 2780.75, '32575385119');
