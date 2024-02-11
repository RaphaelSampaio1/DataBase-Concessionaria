--> OBS.: EXECUTE PRIMEIRO CREATE DATABASE 
--> EXECUTE USE  
--> REMOVA OS SELECTS + CREATE DATABASE + USE 
--> SELECIONE NO TECLADO CTRL + A 
--> F5(RODAR)

CREATE DATABASE Concessionaria;
USE Concessionaria;




SELECT * FROM Dados_Funcionario;
SELECT * FROM Funcionario;
SELECT * FROM Moto;
SELECT * FROM Vendas;
SELECT * FROM Cliente;
SELECT * FROM FORNECEDOR;
SELECT * FROM Precificacao_Fornecedor;
SELECT * FROM Feedback

CREATE TABLE Funcionario(
Id_Funcionario INT IDENTITY(1,1) PRIMARY KEY,
Cargo VARCHAR (250) NOT NULL,
Setor VARCHAR(250) NOT NULL,	
Salario MONEY NOT NULL,Data_Contratacao DATE NOT NULL,
Vt VARCHAR(1),
Vr VARCHAR(1),
Vo VARCHAR(1),
Va VARCHAR(1),
Data_Demissao Date,
);



CREATE TABLE Dados_Funcionario(
Id_Funcionario INT IDENTITY(1,1) FOREIGN KEY REFERENCES Funcionario (ID_FUNCIONARIO),
Nome VARCHAR(400) NOT NULL,
Cpf VARCHAR(11) NOT NULL,
Data_Nascimento DATE NOT NULL,
Email VARCHAR (150) NOT NULL,
Telefone VARCHAR(11),
Celular VARCHAR(11),
Rua VARCHAR(300) NOT NULL,
Bairro VARCHAR(300) NOT NULL,
Numero VARCHAR(300) NOT NULL,
Complemento VARCHAR(300),
Nacionalidade VARCHAR(120),
Genero VARCHAR (40));


INSERT INTO Funcionario (Cargo, Setor, Salario, Data_Contratacao, Vt, Vr, Vo, Va, Data_Demissao)
VALUES
('Gerente de Projetos', 'TI', 7000.00, '2022-04-05', 'A', 'A', NULL, NULL, '2022-11-30'),
('Assistente Administrativo', 'Administração', 3000.00, '2022-05-20', NULL, 'A', NULL, NULL, NULL),
('Analista Financeiro', 'Financeiro', 4500.00, '2022-06-15', 'A', 'A', 'A', NULL, NULL);


INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
( 'Ana Souza', '45678901234', '1992-08-25', 'ana@email.com', '987654321', NULL, 'Rua D', 'Bairro 4', '789', NULL, 'Brasileira', 'Feminino'),
( 'Pedro Oliveira', '23456789012', '1985-03-12', 'pedro@email.com', NULL, '987654321', 'Rua E', 'Bairro 5', '101', NULL, 'Brasileira', 'Masculino'),
( 'Fernanda Lima', '78901234567', '1990-07-18', 'fernanda@email.com', '123456789', NULL, 'Rua F', 'Bairro 6', '456', 'Apto 202', 'Brasileira', 'Feminino');



INSERT INTO Funcionario (Cargo, Setor, Salario, Data_Contratacao, Vt, Vr, Vo, Va, Data_Demissao)
VALUES
('Desenvolvedor', 'TI', 5000.00, '2022-01-01', 'A', 'A', 'A', 'A', '2022-12-31'),
('Analista de Vendas', 'Comercial', 4000.00, '2022-02-15', 'A', NULL, 'A', NULL, NULL),
('Engenheiro de Software', 'TI', 6000.00, '2022-03-10', NULL, 'A', NULL, 'A', NULL),
('Gerente de Projetos', 'TI', 7000.00, '2022-04-05', 'A', 'A', NULL, NULL, '2022-11-30'),
('Assistente Administrativo', 'Administração', 3000.00, '2022-05-20', NULL, 'A', NULL, NULL, NULL),
('Analista Financeiro', 'Financeiro', 4500.00, '2022-06-15', 'A', 'A', 'A', NULL, NULL),
('Analista de RH', 'Recursos Humanos', 4800.00, '2022-07-01', 'A', NULL, 'A', 'A', NULL),
('Secretária Executiva', 'Administração', 3500.00, '2022-08-12', NULL, 'A', NULL, NULL, NULL),
('Analista de Marketing', 'Marketing', 4200.00, '2022-09-20', 'A', 'A', NULL, NULL, NULL),
('Designer Gráfico', 'Marketing', 3800.00, '2022-10-03', NULL, 'A', 'A', 'A', NULL),
('Técnico de Suporte', 'TI', 3200.00, '2022-11-15', 'A', NULL, NULL, NULL, NULL),
('Analista Contábil', 'Contabilidade', 4800.00, '2022-12-08', 'A', 'A', 'A', NULL, NULL),
('Coordenador de Vendas', 'Comercial', 6000.00, '2023-01-02', 'A', NULL, NULL, NULL, NULL),
('Analista de Qualidade', 'Qualidade', 4500.00, '2023-02-14', 'A', 'A', NULL, NULL, NULL),
('Estagiário', 'Diversos', 1500.00, '2023-03-01', NULL, NULL, NULL, NULL, NULL);



INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Carlos Oliveira', '34567890123', '1984-11-05', 'carlos@email.com', '987654321', '987654321', 'Rua G', 'Bairro 7', '890', NULL, 'Brasileira', 'Masculino'),
('Juliana Santos', '56789012345', '1993-02-20', 'juliana@email.com', NULL, '987654321', 'Rua H', 'Bairro 8', '567', 'Apto 303', 'Brasileira', 'Feminino'),
('Rafael Lima', '67890123456', '1988-07-12', 'rafael@email.com', '987654321', NULL, 'Rua I', 'Cidade Tiradentes', '789', NULL, 'Brasileira', 'Masculino');

INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Gabriela Oliveira', '78901234567', '1991-04-15', 'gabriela@email.com', '987654321', NULL, 'Rua J', 'Bairro 9', '678', NULL, 'Brasileira', 'Feminino'),
('Victor Santos', '89012345678', '1986-09-08', 'victor@email.com', NULL, '987654321', 'Rua K', 'Bairro 10', '789', 'Apto 404', 'Brasileira', 'Masculino'),
('Aline Souza', '90123456789', '1995-06-02', 'aline@email.com', '987654321', '987654321', 'Rua L', 'Bairro 11', '890', NULL, 'Brasileira', 'Feminino'),
('Rodrigo Lima', '01234567890', '1983-12-25', 'rodrigo@email.com', NULL, '987654321', 'Rua M', 'Bairro 12', '901', NULL, 'Brasileira', 'Masculino');


INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Isabela Oliveira', '12345678901', '1992-10-10', 'isabela@email.com', '123456789', NULL, 'Rua N', 'Bairro 13', '912', 'Apto 505', 'Brasileira', 'Feminino'),
('Henrique Santos', '23456789012', '1985-05-22', 'henrique@email.com', '987654321', '987654321', 'Rua O', 'Bairro 14', '123', NULL, 'Brasileira', 'Masculino'),
('Patrícia Lima', '34567890123', '1990-02-28', 'patricia@email.com', '987654321', NULL, 'Rua P', 'Bairro 15', '234', 'Apto 606', 'Brasileira', 'Feminino'),
('Lucas Souza', '45678901234', '1987-07-07', 'lucas@email.com', '987654321', '987654321', 'Rua Q', 'Bairro 16', '345', NULL, 'Brasileira', 'Masculino');

INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Vinícius Oliveira', '56789012345', '1993-11-12', 'vinicius@email.com', '987654321', NULL, 'Rua R', 'Bairro 17', '456', 'Apto 707', 'Brasileira', 'Masculino'),
('Eduarda Santos', '67890123456', '1988-04-25', 'eduarda@email.com', NULL, '987654321', 'Rua S', 'Bairro 18', '567', NULL, 'Brasileira', 'Feminino'),
('Gustavo Lima', '78901234567', '1991-09-08', 'gustavo@email.com', '987654321', '987654321', 'Rua T', 'Bairro 19', '678', 'Apto 808', 'Brasileira', 'Masculino'),
('Carolina Souza', '89012345678', '1986-06-02', 'carolina@email.com', '987654321', NULL, 'Rua U', 'Bairro 20', '789', NULL, 'Brasileira', 'Feminino');

INSERT INTO Funcionario (Cargo, Setor, Salario, Data_Contratacao, Vt, Vr, Vo, Va, Data_Demissao)
VALUES
('Analista de Vendas', 'Comercial', 4000.00, '2022-02-15', 'A', NULL, 'A', NULL, NULL),
('Engenheiro de Software', 'TI', 6000.00, '2022-03-10', NULL, 'A', NULL, 'A', NULL),
('Gerente de Projetos', 'TI', 7000.00, '2022-04-05', 'A', 'A', NULL, NULL, '2022-11-30'),
('Assistente Administrativo', 'Administração', 3000.00, '2022-05-20', NULL, 'A', NULL, NULL, NULL),
('Analista Financeiro', 'Financeiro', 4500.00, '2022-06-15', 'A', 'A', 'A', NULL, NULL);


INSERT INTO Funcionario (Cargo, Setor, Salario, Data_Contratacao, Vt, Vr, Vo, Va, Data_Demissao)VALUES
('Analista de RH', 'Recursos Humanos', 4800.00, '2022-07-01', 'A', NULL, 'A', 'A', NULL),
('Secretária Executiva', 'Administração', 3500.00, '2022-08-12', NULL, 'A', NULL, NULL, NULL),
('Analista de Marketing', 'Marketing', 4200.00, '2022-09-20', 'A', 'A', NULL, NULL, NULL),
('Designer Gráfico', 'Marketing', 3800.00, '2022-10-03', NULL, 'A', 'A', 'A', NULL),
('Técnico de Suporte', 'TI', 3200.00, '2022-11-15', 'A', NULL, NULL, NULL, NULL);

INSERT INTO Funcionario (Cargo, Setor, Salario, Data_Contratacao, Vt, Vr, Vo, Va, Data_Demissao)
VALUES
('Analista Contábil', 'Contabilidade', 4800.00, '2022-12-08', 'A', 'A', 'A', NULL, NULL),
('Coordenador de Vendas', 'Comercial', 6000.00, '2023-01-02', 'A', NULL, NULL, NULL, NULL),
('Analista de Qualidade', 'Qualidade', 4500.00, '2023-02-14', 'A', 'A', NULL, NULL, NULL),
('Estagiário', 'Diversos', 1500.00, '2023-03-01', NULL, NULL, NULL, NULL, NULL),
('Diretor de TI', 'TI', 10000.00, '2023-04-15', 'A', 'A', 'A', 'A', NULL);

INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Eduarda Santos', '67890123456', '1988-04-25', 'eduarda@email.com', NULL, '987654321', 'Rua S', 'Bairro 18', '567', NULL, 'Brasileira', 'Feminino'),
('Gustavo Lima', '78901234567', '1991-09-08', 'gustavo@email.com', '987654321', '987654321', 'Rua T', 'Bairro 19', '678', 'Apto 808', 'Brasileira', 'Masculino'),
('Carolina Souza', '89012345678', '1986-06-02', 'carolina@email.com', '987654321', NULL, 'Rua U', 'Bairro 20', '789', NULL, 'Brasileira', 'Feminino'),
('Isabela Oliveira', '23456789012', '1992-10-10', 'isabela@email.com', '123456789', NULL, 'Rua N', 'Bairro 13', '912', 'Apto 505', 'Brasileira', 'Feminino'),
('Henrique Santos', '34567890123', '1985-05-22', 'henrique@email.com', '987654321', '987654321', 'Rua O', 'Bairro 14', '123', NULL, 'Brasileira', 'Masculino');


INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Bruno Santos', '01234567890', '1984-03-15', 'bruno@email.com', '98765432101', '98765432201', 'Rua Q', 'Bairro 19', '789', 'Apto 404', 'Brasileira', 'Masculino'),
('Juliana Lima', '12345678901', '1992-07-08', 'juliana@email.com', '98765432301', '98765432401', 'Rua R', 'Bairro 20', '456', NULL, 'Brasileira', 'Feminino'),
('André Oliveira', '23456789012', '1989-05-02', 'andre@email.com', '98765432501', '98765432601', 'Rua S', 'Bairro 21', '101', NULL, 'Brasileira', 'Masculino'),
('Mariana Souza', '34567890123', '1993-10-18', 'mariana@email.com', '98765432701', '98765432801', 'Rua T', 'Bairro 22', '456', 'Apto 505', 'Brasileira', 'Feminino'),
('Gustavo Santos', '45678901234', '1987-12-03', 'gustavo@email.com', '98765432901', '98765433001', 'Rua U', 'Bairro 23', '789', 'Apto 606', 'Brasileira', 'Masculino');


INSERT INTO Dados_Funcionario (Nome, Cpf, Data_Nascimento, Email, Telefone, Celular, Rua, Bairro, Numero, Complemento, Nacionalidade, Genero)
VALUES
('Laura Maria', '56789012345', '1995-01-22', 'laura@email.com', '98765433101', '98765433201', 'Rua V', 'Bairro 24', '890', NULL, 'Brasileira', 'Feminino'),
('Carla Perez', '67890123456', '1990-06-15', 'rafaela@email.com', '98765433301', NULL, 'Rua W', 'Bairro 25', '901', NULL, 'Brasileira', 'Feminino'),
('Fernandes Lima', '78901234567', '1988-11-28', 'matheus@email.com', NULL, '98765433401', 'Rua X', 'Bairro 26', '123', 'Apto 707', 'Brasileira', 'Masculino'),
('Beijamin Grahan', '89012345678', '1993-04-10', 'rodrigo@email.com', '98765433501', NULL, 'Rua Y', 'Bairro 27', '234', NULL, 'Brasileira', 'Masculino'),
('Brenda Jeik', '90123456789', '1987-09-05', 'amanda@email.com', '98765433601', '98765433701', 'Rua Z', 'Bairro 28', '345', NULL, 'Brasileira', 'Feminino');

CREATE TABLE Moto (
Id_Moto INT IDENTITY(1,1) PRIMARY KEY,
Nome VARCHAR(300) NOT NULL,
Marca VARCHAR(200) NOT NULL,
Ano INT NOT NULL,
Cor VARCHAR(90) NOT NULL,
Valor MONEY NOT NULL,
Quantidade INT NOT NULL,
Cilindrada INT NULL
)

INSERT INTO Moto (Nome, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    ('CBR1000RR', 'Honda', 2022, 'Vermelha', 193500.00, 23, 1000),
    ('YZF-R1', 'Yamaha', 2021, 'Azul', 125000.00, 31, 998),
    ('S1000RR', 'BMW', 2023, 'Branca', 125900.00, 9, 999),
    ('Street Triple RS', 'Triumph', 2022, 'Preto', 68990.00, 18, 765),
    ('Ninja ZX-10R', 'Kawasaki', 2022, 'Verde', 118190.00, 8, 998),
	('CB650R', 'Honda', 2023, 'Laranja', 22370.00, 11, 649),
    ('MT-09', 'Yamaha', 2022, 'Cinza', 59690.00, 4, 847),
    ('R1250GS', 'BMW', 2021, 'Azul', 89900.00, 10, 1254),
    ('Tiger 800 Xrx', 'Triumph', 2020, 'Amarela', 52900.00, 17, 800),
    ('Ninja 650', 'Kawasaki', 2022, 'Azul', 49530.00, 10, 649),
    ('Rebel 500', 'Honda', 2021, 'Preto', 56000.00, 8, 471),
    ('MT-07', 'Yamaha', 2023, 'Vermelho', 46990.00, 21, 689),
    ('F850GS', 'BMW', 2022, 'Verde', 79500.00, 35, 853),
    ('Bonneville T120', 'Triumph', 2020, 'Marrom', 613490.00, 20, 1200),
    ('Z900', 'Kawasaki', 2021, 'Branco', 47990.00, 9, 948);


INSERT INTO Moto (Nome, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    ('CBR1000RR', 'Honda', 2023, 'Preto', 191777.50, 21, 1000),
    ('YZF-R1', 'Yamaha', 2022, 'Branca', 126875.00, 32, 998),
    ('S1000RR', 'BMW', 2024, 'Vermelha', 121248.00, 8, 999),
    ('Street Triple RS', 'Triumph', 2023, 'Azul', 69911.70, 17, 765),
    ('Ninja ZX-10R', 'Kawasaki', 2023, 'Amarela', 119906.35, 9, 998),
    ('CB650R', 'Honda', 2024, 'Verde', 21470.80, 10, 649),
    ('MT-09', 'Yamaha', 2023, 'Laranja', 60540.35, 5, 847),
    ('R1250GS', 'BMW', 2022, 'Preto', 86061.00, 9, 1254),
    ('Tiger 800 Xrx', 'Triumph', 2021, 'Vermelha', 52096.50, 15, 800),
    ('Ninja 650', 'Kawasaki', 2023, 'Branca', 46851.87, 12, 649),
    ('Rebel 500', 'Honda', 2022, 'Vermelho', 53760.00, 7, 471),
    ('MT-07', 'Yamaha', 2024, 'Preto', 47591.35, 20, 689),
    ('F850GS', 'BMW', 2023, 'Cinza', 80776.25, 37, 853),
    ('Bonneville T120', 'Triumph', 2021, 'Azul', 589322.40, 18, 1200),
    ('Z900', 'Kawasaki', 2022, 'Cinza', 45910.40, 6, 948);

INSERT INTO Moto (Nome, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    ('GSX-R1000', 'Suzuki', 2022, 'Azul', 117900.00, 15, 1000),
    ('NMAX 160', 'Yamaha', 2023, 'Preto', 21114.00, 50, 155),
    ('Ducati Panigale V4', 'Ducati', 2024, 'Vermelha', 690000.00, 8, 1103),
    ('Versys 1000', 'Kawasaki', 2023, 'Verde', 72900.00, 12, 1043),
    ('CBR500R', 'Honda', 2024, 'Branca', 52590.00, 25, 471),
    ('MT-03', 'Yamaha', 2022, 'Amarela', 31390.00, 30, 321),
    ('Indian Scout', 'Indian', 2023, 'Marrom', 63000.00, 18, 1133),
    ('Vespa Primavera', 'Vespa', 2022, 'Rosa', 22890.00, 40, 150),
    ('Harley-Davidson Sportster Iron 883', 'Harley-Davidson', 2021, 'Laranja', 59900.00, 15, 883),
    ('Africa Twin', 'Honda', 2022, 'Azul', 88100.00, 20, 1084),
    ('MT-09 Tracer', 'Yamaha', 2023, 'Cinza', 67390.00, 10, 847),
    ('Monster 821', 'Ducati', 2024, 'Verde', 115000.00, 8, 821),
    ('Z400', 'Kawasaki', 2022, 'Preto', 32690.00, 22, 399),
    ('CBR650R', 'Honda', 2023, 'Vermelha', 53790.00, 18, 649),
    ('MT-125', 'Yamaha', 2024, 'Branca', 16830.00, 28, 125),
    ('Scrambler Sixty2', 'Ducati', 2022, 'Amarela', 57990.00, 15, 399),
    ('Ninja 400', 'Kawasaki', 2023, 'Roxa', 35810.00, 25, 399),
    ('Rebel 1100', 'Honda', 2024, 'Prata', 40100.00, 12, 1084),
    ('Trident 660', 'Triumph', 2022, 'Azul', 49990.00, 17, 660);




INSERT INTO Moto (Nome, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    ('GSX-R1000', 'Suzuki', 2023, 'Preto', 121416.00, 18, 1000),
    ('NMAX 160', 'Yamaha', 2024, 'Cinza', 22288.29, 48, 155),
    ('Ducati Panigale V4', 'Ducati', 2025, 'Vermelho', 71707.25, 9, 1103),
    ('Versys 1000', 'Kawasaki', 2024, 'Verde', 72323.76, 11, 1043),
    ('CBR500R', 'Honda', 2025, 'Branco', 52315.52, 23, 471),
    ('MT-03', 'Yamaha', 2023, 'Preto', 33046.67, 27, 321),
    ('Indian Scout', 'Indian', 2024, 'Marrom', 62192.64, 15, 1133),
    ('Vespa Primavera', 'Vespa', 2023, 'Rosa', 22885.70, 36, 150),
    ('Harley-Davidson Sportster Iron 883', 'Harley-Davidson', 2022, 'Preto', 60076.80, 14, 883),
    ('Africa Twin', 'Honda', 2023, 'Azul', 92679.18, 18, 1084),
    ('MT-09 Tracer', 'Yamaha', 2024, 'Cinza', 70938.47, 9, 847),
    ('Monster 821', 'Ducati', 2025, 'Verde Militar', 115650.00, 7, 821),
    ('Z400', 'Kawasaki', 2023, 'Preto Metálico', 33257.92, 20, 399),
    ('CBR650R', 'Honda', 2024, 'Vermelho', 55234.32, 16, 649),
    ('MT-125', 'Yamaha', 2025, 'Branco Glacial', 17317.86, 25, 125),
    ('Scrambler Sixty2', 'Ducati', 2023, 'Amarelo', 57132.09, 13, 399),
    ('Ninja 400', 'Kawasaki', 2024, 'Roxo Candy', 35468.22, 23, 399),
    ('Rebel 1100', 'Honda', 2025, 'Prata Chromo', 39612.16, 10, 1084),
    ('Trident 660', 'Triumph', 2023, 'Azul Sapphire', 51821.55, 15, 660);



CREATE TABLE Cliente(
Id_Cliente INT IDENTITY (1,1) PRIMARY KEY,
Nome VARCHAR (300) NOT NULL,
Cpf VARCHAR(11) NOT NULL,
Data_Nascimento DATE NOT NULL,
Telefone VARCHAR (11),
Celular VARCHAR (11),
Rua VARCHAR (300),
Bairro VARCHAR (200),
Numero INT,
Email VARCHAR(250)
);

INSERT INTO Cliente (Nome, Cpf, Data_Nascimento, Telefone, Celular, Rua, Bairro, Numero,Email)
VALUES
    ('Juliana Silva', '12345678901', '1990-05-15', '1122334455', '9988776655', 'Rua Alegria', 'Centro', 123,'Juliana.Silva@gmail.com
'),
    ('Lucas Oliveira', '23456789012', '1985-08-22', '2233445566', '987654321', 'Rua Esperança', 'Jardim', 456,'Lucas.Oliveira@gmail.com
'),
    ('Amanda Santos', '34567890123', '1992-02-10', '3344556677', '999888777', 'Rua Felicidade', 'Vila', 789,'Amanda.Santos@gmail.com
'),
    ('Rafael Pereira', '45678901234', '1988-11-27', '4455667788', '876543210', 'Rua Amor', 'Liberdade', 1011,'Rafael.Pereira@gmail.com  
'),
    ('Carla Souza', '56789012345', '1983-09-18', '5566778899', '765432109', 'Rua Paz', 'Praia', 1213,'Carla.Souza@gmail.com  
'),
    ('Fernando Lima', '67890123456', '1986-04-05', '6677889900', '654321098', 'Rua Harmonia', 'Monte', 1415,'Fernando.Lima@gmail.com  
'),
    ('Isabela Rocha', '78901234567', '1995-07-03', '7788990011', '543210987', 'Rua Aventura', 'Flores', 1617,'Isabela.Rocha@gmail.com  
'),
    ('Matheus Costa', '89012345678', '1984-01-12', '8899001122', '432109876', 'Rua Sonho', 'Bosque', 1819,'Matheus.Costa@gmail.com  
'),
    ('Larissa Santos', '90123456789', '1987-06-29', '9900112233', '321098765', 'Rua Esperança', 'Sol', 2021,'Larissa.Santos@gmail.com  
'),
    ('Gabriel Oliveira', '01234567890', '1991-03-14', '0011223344', '210987654', 'Rua Serenidade', 'Serra', 2223,'Gabriel.Oliveira@gmail.com  
'),
    ('Ana Paula Lima', '12345678909', '1989-12-20', '1122334455', '9988776655', 'Rua Alegria', 'Centro', 123,'Ana.Paula.Lima@gmail.com  
'),
    ('Roberto Costa', '23456789018', '1982-10-17', '2233445566', '987654321', 'Rua Esperança', 'Jardim', 456,'Roberto.Costa@gmail.com  
'),
    ('Patricia Silva', '34567890127', '1993-05-24', '3344556677', '999888777', 'Rua Felicidade', 'Vila', 789,'Patricia.Silva@gmail.com  
'),
    ('Ricardo Pereira', '45678901236', '1985-02-08', '4455667788', '876543210', 'Rua Amor', 'Liberdade', 1011,'Ricardo.Pereira@gmail.com  
'),
    ('Camila Souza', '56789012356', '1980-12-01', '5566778899', '765432109', 'Rua Paz', 'Praia', 1213,'Camila.Souza@gmail.com  
'),
    ('Leandro Lima', '67890123465', '1983-07-16', '6677889900', '654321098', 'Rua Harmonia', 'Monte', 1415,'Leandro.Lima@gmail.com  
'),
    ('Mariana Rocha', '78901234574', '1994-10-09', '7788990011', '543210987', 'Rua Aventura', 'Flores', 1617,'Mariana.Rocha@gmail.com  
'),
    ('Felipe Costa', '89012345683', '1981-04-26', '8899001122', '432109876', 'Rua Sonho', 'Bosque', 1819,'Felipe.Costa@gmail.com  
'),
    ('Vanessa Santos', '90123456792', '1984-11-03', '9900112233', '321098765', 'Rua Esperança', 'Sol', 2021,'Vanessa.Santos@gmail.com  
'),
    ('Daniel Oliveira', '01234567801', '1990-08-10', '0011223344', '210987654', 'Rua Serenidade', 'Serra', 2223,'Daniel.Oliveira@gmail.com  
');

	INSERT INTO Cliente (Nome, Cpf, Data_Nascimento, Telefone, Celular, Rua, Bairro, Numero, Email)
VALUES
    ('Leticia Lima', '12345678901', '1987-03-05', NULL, '9988776655', 'Rua Alegria', 'Centro', 123,'Leticia.Lima@gmail.com  
'),
    ('Rafael Oliveira', '23456789012', '1992-09-14', '2233445566', NULL, 'Rua Esperança', 'Jardim', 456,'Rafael.Oliveira@gmail.com 
'),
    ('Aline Silva', '34567890123', '1981-06-22', NULL, '999888777', 'Rua Felicidade', 'Vila', 789,'Aline.Silva@gmail.com
'),
    ('Carlos Costa', '45678901234', '1990-11-30', '4455667788', NULL, 'Rua Amor', 'Liberdade', 1011,'Carlos.Costa@gmail.com 
'),
    ('Juliana Pereira', '56789012345', '1983-07-12', NULL, '876543210', 'Rua Paz', 'Praia', 1213,'Juliana.Pereira@gmail.com
'),
    ('Leonardo Souza', '67890123456', '1988-04-29', '5566778899', NULL, 'Rua Harmonia', 'Monte', 1415,'Leonardo.Souza@gmail.com
'),
    ('Tatiane Rocha', '78901234567', '1995-01-08', NULL, '765432109', 'Rua Aventura', 'Flores', 1617,'Tatiane.Rocha@gmail.com
'),
    ('Vinicius Costa', '89012345678', '1982-08-25', '6677889900', NULL, 'Rua Sonho', 'Bosque', 1819,'Vinicius.Costa@gmail.com  
'),
    ('Fernanda Santos', '90123456789', '1993-11-18', NULL, '543210987', 'Rua Esperança', 'Sol', 2021,'Fernanda.Santos@gmail.com  
'),
    ('Renato Oliveira', '01234567890', '1986-02-03', '0011223344', NULL, 'Rua Serenidade', 'Serra', 2223,'Renato.Oliveira@gmail.com  
'),
    ('Larissa Costa', '12345678909', '1984-05-20', NULL, '9988776655', 'Rua Alegria', 'Centro', 123,'Larissa.Costa@gmail.com  
'),
    ('Gustavo Lima', '23456789018', '1989-12-17', '2233445566', NULL, 'Rua Esperança', 'Jardim', 456,'Gustavo.Lima@gmail.com  
'),
    ('Bianca Silva', '34567890127', '1994-03-24', NULL, '999888777', 'Rua Felicidade', 'Vila', 789,'Bianca.Silva@gmail.com  
'),
    ('Rodrigo Pereira', '45678901236', '1980-10-11', '4455667788', NULL, 'Rua Amor', 'Liberdade', 1011,'Rodrigo.Pereira@gmail.com  
'),
    ('Mariana Souza', '56789012356', '1985-07-16', '5566778899', NULL, 'Rua Paz', 'Praia', 1213,'Mariana.Souza@gmail.com  
'),
    ('Lucas Lima', '67890123465', '1982-04-01', '6677889900', NULL, 'Rua Harmonia', 'Monte', 1415,'Lucas.Lima@gmail.com  
'),
    ('Isadora Rocha', '78901234574', '1993-09-09', NULL, '543210987', 'Rua Aventura', 'Flores', 1617,'Isadora.Rocha@gmail.com  
'),
    ('Diego Costa', '89012345683', '1981-06-26', '8899001122', NULL, 'Rua Sonho', 'Bosque', 1819,'Diego.Costa@gmail.com  
'),
    ('Viviane Santos', '90123456792', '1986-11-03', NULL, '321098765', 'Rua Esperança', 'Sol', 2021,'Viviane.Santos@gmail.com  
'),
    ('Thiago Oliveira', '01234567801', '1991-06-10', '0011223344', NULL, 'Rua Serenidade', 'Serra', 2223,'Thiago.Oliveira@gmail.com  
');

INSERT INTO CLIENTE (Nome, Cpf, Data_Nascimento, Telefone, Celular, Rua, Bairro, Numero,Email)
VALUES (
'Roberto Justus', '17144552031', '1978-03-05', NULL, '11985782056', 'Alphaville', 'Centro', 1045,'Roberto.Justus@gmail.com  
'),
(
'Primo Rico', '57474612062', '1992-08-27', NULL, '11984452058', 'Alphaville', 'Centro', 2003,'Primo.Rico@gmail.com');


CREATE TABLE Vendas(
Id_Venda INT IDENTITY(1,1) PRIMARY KEY,
Id_Moto INT FOREIGN KEY REFERENCES Moto(Id_Moto),
Parcelas INT DEFAULT 1,
Nm_Nf VARCHAR(16) DEFAULT LEFT(CONVERT(VARCHAR(36),NEWID()),14),
DATA_VENDA DATE,
Id_Cliente  INT FOREIGN KEY REFERENCES Cliente(Id_Cliente)
);

INSERT INTO Vendas (Id_Moto, Parcelas, Data_Venda, Id_Cliente)
VALUES
    (3, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 1),
    (8, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 2),
    (13, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 3),
    (18, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 4),
    (23, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 5),
    (28, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 6),
    (33, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 7),
    (38, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 8),
    (43, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 9),
    (48, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 10),
    (53, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 11),
    (58, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 12),
    (63, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 13),
    (68, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 14),
    (4, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 15),
    (9, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 16),
    (14, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 17),
    (19, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 18),
    (24, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 19),
    (29, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 20),
    (34, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 21),
    (39, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 22),
    (44, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 23),
    (49, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 24),
    (54, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 25),
    (59, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 26),
    (64, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 27),
    (60, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 28),
    (5, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 29),
    (10, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 30),
    (15, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 31),
    (20, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 32),
    (25, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 33),
    (30, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 34),
    (35, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 35),
    (40, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 36),
    (45, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 37),
    (50, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 38),
    (55, 3, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 39),
    (60, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 40),
    (65, 2, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 41),
    (18, 1, DATEADD(day, ROUND(RAND() * 730, 0), '2022-01-01'), 42);



CREATE TABLE Fornecedor (
Id_Fornecedor INT IDENTITY (1,1) PRIMARY KEY,
Razao_Social VARCHAR (300) NOT NULL,
Cnpj VARCHAR (14) NOT NULL,
Estado VARCHAR (2)
)

INSERT INTO Fornecedor (
Razao_Social,
Cnpj,
Estado)
VALUES ('MotoVision Industria e Comercio Ltda.'	,	69177636000100	,'SP'		)
, ('SpeedRide Distribuidora de Motocicletas S/A'	,	48849133000163	,		'SP'		)
, ('TwoWheels Fabricacao e Comercio de Motocicletas EIRELI'	,	14510394000132	,		'MG'	)
, ('ThunderCycle Montadora de Motos Ltda.'	,	65465063000169	,		'PR'		)
, ('RoadRunner Distribuidora de Pecas e Acessorios para Motos Ltda.'	,	33664717000197	,		'SC'	)
, ('MotoElite Indústria e Comercio de Motocicletas S/A'	,	73610203000173	,		'SP'		)
, ('TurboDrive Fabricante de Pecas e Componentes para Motocicletas Ltda.'	,	60341255000140	,		'AL'		)
, ('MotoWorld Comercio de Motos e Acessorios Ltda.'	,	10973509000174	,		'MG'	)
, ('FireBike Indústria e Comércio de Motocicletas Esportivas S/A'	,	3727068000165	,		'RJ'	)

ALTER TABLE MOTO
ADD  Id_Fornecedor INT FOREIGN KEY REFERENCES Fornecedor(Id_Fornecedor);


UPDATE Moto
SET Id_Fornecedor = 3 
WHERE ID_MOTO = 1;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 2;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 3;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 4;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 5;

UPDATE Moto
SET Id_Fornecedor = 2 
WHERE ID_MOTO = 6;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 7;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 8;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 9;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 10;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 11;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 12;

UPDATE Moto
SET Id_Fornecedor = 3 
WHERE ID_MOTO = 13;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 14;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 15;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 16;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 17;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 18;

UPDATE Moto
SET Id_Fornecedor = 3 
WHERE ID_MOTO = 19;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 20;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 21;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 22;

UPDATE Moto
SET Id_Fornecedor = 2 
WHERE ID_MOTO = 23;

UPDATE Moto
SET Id_Fornecedor = 2 
WHERE ID_MOTO = 24;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 25;

UPDATE Moto
SET Id_Fornecedor = 3 
WHERE ID_MOTO = 26;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 27;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 28;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 29;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 30;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 31;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 32;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 33;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 34;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 35;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 36;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 37;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 38;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 39;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 40;

UPDATE Moto
SET Id_Fornecedor = 2 
WHERE ID_MOTO = 41;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 42;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 43;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 44;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 45;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 46;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 47;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 48;

UPDATE Moto
SET Id_Fornecedor = 7 
WHERE ID_MOTO = 49;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 50;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 51;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 52;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 53;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 54;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 55;

UPDATE Moto
SET Id_Fornecedor = 3 
WHERE ID_MOTO = 56;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 57;

UPDATE Moto
SET Id_Fornecedor = 6 
WHERE ID_MOTO = 58;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 59;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 60;

UPDATE Moto
SET Id_Fornecedor = 9 
WHERE ID_MOTO = 61;

UPDATE Moto
SET Id_Fornecedor = 1 
WHERE ID_MOTO = 62;

UPDATE Moto
SET Id_Fornecedor = 2 
WHERE ID_MOTO = 63;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 64;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 65;

UPDATE Moto
SET Id_Fornecedor = 5 
WHERE ID_MOTO = 66;

UPDATE Moto
SET Id_Fornecedor = 8 
WHERE ID_MOTO = 67;

UPDATE Moto
SET Id_Fornecedor = 4 
WHERE ID_MOTO = 68;


CREATE TABLE Precificacao_Fornecedor(
Id_fornecedor INT FOREIGN KEY REFERENCES Fornecedor(Id_Fornecedor),
Moto VARCHAR(300) NOT NULL,
Marca VARCHAR(200) NOT NULL,
Ano INT NOT NULL,
Cor VARCHAR(90) NOT NULL,
Valor MONEY NOT NULL,
Quantidade INT NOT NULL,
Cilindrada INT NULL
);



INSERT INTO Precificacao_Fornecedor (Id_fornecedor,Moto, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    (3,'CBR1000RR', 'Honda', 2022, 'Vermelha', 193500.00, 23, 1000),
    (6,'YZF-R1', 'Yamaha', 2021, 'Azul', 125000.00, 31, 998),
    (5,'S1000RR', 'BMW', 2023, 'Branca', 125900.00, 9, 999),
    (1,'Street Triple RS', 'Triumph', 2022, 'Preto', 68990.00, 18, 765),
    (9,'Ninja ZX-10R', 'Kawasaki', 2022, 'Verde', 118190.00, 8, 998),
	(2,'CB650R', 'Honda', 2023, 'Laranja', 22370.00, 11, 649),
    (1,'MT-09', 'Yamaha', 2022, 'Cinza', 59690.00, 4, 847),
    (8,'R1250GS', 'BMW', 2021, 'Azul', 89900.00, 10, 1254),
    (5,'Tiger 800 Xrx', 'Triumph', 2020, 'Amarela', 52900.00, 17, 800),
    (1,'Ninja 650', 'Kawasaki', 2022, 'Azul', 49530.00, 10, 649),
    (6,'Rebel 500', 'Honda', 2021, 'Preto', 56000.00, 8, 471),
    (5,'MT-07', 'Yamaha', 2023, 'Vermelho', 46990.00, 21, 689),
    (3,'F850GS', 'BMW', 2022, 'Verde', 79500.00, 35, 853),
    (1,'Bonneville T120', 'Triumph', 2020, 'Marrom', 613490.00, 20, 1200),
    (5,'Z900', 'Kawasaki', 2021, 'Branco', 47990.00, 9, 948);


INSERT INTO Precificacao_Fornecedor (Id_fornecedor,Moto, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    (1,'CBR1000RR', 'Honda', 2023, 'Preto', 191777.50, 21, 1000),
    (6,'YZF-R1', 'Yamaha', 2022, 'Branca', 126875.00, 32, 998),
    (6,'S1000RR', 'BMW', 2024, 'Vermelha', 121248.00, 8, 999),
    (3,'Street Triple RS', 'Triumph', 2023, 'Azul', 69911.70, 17, 765),
    (5,'Ninja ZX-10R', 'Kawasaki', 2023, 'Amarela', 119906.35, 9, 998),
    (9,'CB650R', 'Honda', 2024, 'Verde', 21470.80, 10, 649),
    (8,'MT-09', 'Yamaha', 2023, 'Laranja', 60540.35, 5, 847),
    (2,'R1250GS', 'BMW', 2022, 'Preto', 86061.00, 9, 1254),
    (2,'Tiger 800 Xrx', 'Triumph', 2021, 'Vermelha', 52096.50, 15, 800),
    (5,'Ninja 650', 'Kawasaki', 2023, 'Branca', 46851.87, 12, 649),
    (3,'Rebel 500', 'Honda', 2022, 'Vermelho', 53760.00, 7, 471),
    (9,'MT-07', 'Yamaha', 2024, 'Preto', 47591.35, 20, 689),
    (5,'F850GS', 'BMW', 2023, 'Cinza', 80776.25, 37, 853),
    (7,'Bonneville T120', 'Triumph', 2021, 'Azul', 589322.40, 18, 1200),
    (4,'Z900', 'Kawasaki', 2022, 'Cinza', 45910.40, 6, 948);

INSERT INTO Precificacao_Fornecedor (Id_fornecedor,Moto, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    (7,'GSX-R1000', 'Suzuki', 2022, 'Azul', 117900.00, 15, 1000),
    (7,'NMAX 160', 'Yamaha', 2023, 'Preto', 21114.00, 50, 155),
    (4,'Ducati Panigale V4', 'Ducati', 2024, 'Vermelha', 690000.00, 8, 1103),
    (7,'Versys 1000', 'Kawasaki', 2023, 'Verde', 72900.00, 12, 1043),
    (4,'CBR500R', 'Honda', 2024, 'Branca', 52590.00, 25, 471),
    (4,'MT-03', 'Yamaha', 2022, 'Amarela', 31390.00, 30, 321),
    (7,'Indian Scout', 'Indian', 2023, 'Marrom', 63000.00, 18, 1133),
    (1,'Vespa Primavera', 'Vespa', 2022, 'Rosa', 22890.00, 40, 150),
    (1,'Harley-Davidson Sportster Iron 883', 'Harley-Davidson', 2021, 'Laranja', 59900.00, 15, 883),
    (9,'Africa Twin', 'Honda', 2022, 'Azul', 88100.00, 20, 1084),
    (2,'MT-09 Tracer', 'Yamaha', 2023, 'Cinza', 67390.00, 10, 847),
    (5,'Monster 821', 'Ducati', 2024, 'Verde', 115000.00, 8, 821),
    (9,'Z400', 'Kawasaki', 2022, 'Preto', 32690.00, 22, 399),
    (8,'CBR650R', 'Honda', 2023, 'Vermelha', 53790.00, 18, 649),
    (4,'MT-125', 'Yamaha', 2024, 'Branca', 16830.00, 28, 125),
    (5,'Scrambler Sixty2', 'Ducati', 2022, 'Amarela', 57990.00, 15, 399),
    (1,'Ninja 400', 'Kawasaki', 2023, 'Roxa', 35810.00, 25, 399),
    (9,'Rebel 1100', 'Honda', 2024, 'Prata', 40100.00, 12, 1084),
    (7,'Trident 660', 'Triumph', 2022, 'Azul', 49990.00, 17, 660);




INSERT INTO Precificacao_Fornecedor (Id_fornecedor, Moto, Marca, Ano, Cor, Valor, Quantidade, Cilindrada)
VALUES
    (8,'GSX-R1000', 'Suzuki', 2023, 'Preto', 121416.00, 18, 1000),
    (6,'NMAX 160', 'Yamaha', 2024, 'Cinza', 22288.29, 48, 155),
    (4,'Ducati Panigale V4', 'Ducati', 2025, 'Vermelho', 71707.25, 9, 1103),
    (1,'Versys 1000', 'Kawasaki', 2024, 'Verde', 72323.76, 11, 1043),
    (4,'CBR500R', 'Honda', 2025, 'Branco', 52315.52, 23, 471),
    (9,'MT-03', 'Yamaha', 2023, 'Preto', 33046.67, 27, 321),
    (3,'Indian Scout', 'Indian', 2024, 'Marrom', 62192.64, 15, 1133),
    (5,'Vespa Primavera', 'Vespa', 2023, 'Rosa', 22885.70, 36, 150),
    (6,'Harley-Davidson Sportster Iron 883', 'Harley-Davidson', 2022, 'Preto', 60076.80, 14, 883),
    (4,'Africa Twin', 'Honda', 2023, 'Azul', 92679.18, 18, 1084),
    (5,'MT-09 Tracer', 'Yamaha', 2024, 'Cinza', 70938.47, 9, 847),
    (9,'Monster 821', 'Ducati', 2025, 'Verde Militar', 115650.00, 7, 821),
    (1,'Z400', 'Kawasaki', 2023, 'Preto Metálico', 33257.92, 20, 399),
    (2,'CBR650R', 'Honda', 2024, 'Vermelho', 55234.32, 16, 649),
    (5,'MT-125', 'Yamaha', 2025, 'Branco Glacial', 17317.86, 25, 125),
    (8,'Scrambler Sixty2', 'Ducati', 2023, 'Amarelo', 57132.09, 13, 399),
    (5,'Ninja 400', 'Kawasaki', 2024, 'Roxo Candy', 35468.22, 23, 399),
    (8,'Rebel 1100', 'Honda', 2025, 'Prata Chromo', 39612.16, 10, 1084),
    (4,'Trident 660', 'Triumph', 2023, 'Azul Sapphire', 51821.55, 15, 660);




UPDATE Precificacao_Fornecedor
SET Valor = Valor * 0.73;


ALTER TABLE VENDAS
ADD Nome_Moto VARCHAR(300);

UPDATE Vendas 
	SET NOME_MOTO = M.Nome
	FROM Vendas V
	JOIN Moto M
	ON M.Id_Moto = V.Id_Moto;



ALTER TABLE Moto
ADD Guid UNIQUEIDENTIFIER DEFAULT NEWID();

UPDATE Moto
SET GUID = NEWID();




ALTER TABLE Moto
ADD Categoria VARCHAR(50);

UPDATE MOTO
SET CATEGORIA ='Adventure/Touring'
	WHERE Nome = 'Versys 1000';

UPDATE MOTO
SET CATEGORIA ='Big Trail'
	WHERE Nome IN ('R1250GS',
'Tiger 800 Xrx',
'F850GS',
'Africa Twin'
);


UPDATE MOTO
SET CATEGORIA ='Classic'
	WHERE Nome='Bonneville T120';


UPDATE MOTO
SET CATEGORIA ='Cruiser'
	WHERE Nome IN('Rebel 500',
'Indian Scout',
'Harley-Davidson Sportster Iron 883',
'Rebel 1100');


UPDATE MOTO
SET CATEGORIA ='Naked/Streetfighter'
	WHERE Nome='Monster 821';


UPDATE MOTO
SET CATEGORIA ='Roadster'
	WHERE Nome='Trident 660';

UPDATE MOTO
SET CATEGORIA ='Scooter'
	WHERE Nome IN ('NMAX 160',
'Vespa Primavera');


UPDATE MOTO
SET CATEGORIA ='Scrambler'
	WHERE Nome='Scrambler Sixty2';


UPDATE MOTO
SET CATEGORIA ='Sport'
	WHERE Nome IN ('CBR1000RR',
'YZF-R1',
'S1000RR',
'Ninja ZX-10R',
'GSX-R1000',
'Ducati Panigale V4',
'CBR500R',
'CBR650R'
);


UPDATE MOTO
SET CATEGORIA ='Sport/Street'
	WHERE Nome IN ('Ninja 650',
'Ninja 400');


UPDATE MOTO
SET CATEGORIA ='Street'
	WHERE Nome IN ('Street Triple RS',
'CB650R',
'MT-09',
'MT-07',
'Z900',
'MT-03',
'Z400',
'MT-125'
);
	
UPDATE MOTO
SET CATEGORIA ='Touring'
	WHERE Nome='MT-09 Tracer';





ALTER TABLE Precificacao_Fornecedor
ADD Categoria VARCHAR(50);

UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Adventure/Touring'
	WHERE MOTO = 'Versys 1000';

UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Big Trail'
	WHERE MOTO IN ('R1250GS',
'Tiger 800 Xrx',
'F850GS',
'Africa Twin'
);


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Classic'
	WHERE MOTO='Bonneville T120';


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Cruiser'
	WHERE MOTO IN('Rebel 500',
'Indian Scout',
'Harley-Davidson Sportster Iron 883',
'Rebel 1100');


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Naked/Streetfighter'
	WHERE MOTO='Monster 821';


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Roadster'
	WHERE MOTO='Trident 660';

UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Scooter'
	WHERE MOTO IN ('NMAX 160',
'Vespa Primavera');


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Scrambler'
	WHERE MOTO='Scrambler Sixty2';


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Sport'
	WHERE MOTO IN ('CBR1000RR',
'YZF-R1',
'S1000RR',
'Ninja ZX-10R',
'GSX-R1000',
'Ducati Panigale V4',
'CBR500R',
'CBR650R'
);


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Sport/Street'
	WHERE MOTO IN ('Ninja 650',
'Ninja 400');


UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Street'
	WHERE MOTO IN ('Street Triple RS',
'CB650R',
'MT-09',
'MT-07',
'Z900',
'MT-03',
'Z400',
'MT-125'
);
	
UPDATE Precificacao_Fornecedor
SET CATEGORIA ='Touring'
	WHERE MOTO='MT-09 Tracer';



CREATE TABLE Feedback (
Id_Feedback INT IDENTITY(1,1),
Feedback TEXT,
Id_Cliente INT FOREIGN KEY REFERENCES Cliente(Id_Cliente),
Data DATE
);

 

INSERT INTO Feedback (Feedback, Id_Cliente, Data) 
VALUES 
('Ótimo atendimento e ótimos produtos.', 13, GETDATE()),
('Estou muito satisfeito com minha compra!', 40, CONVERT(DATE, '2023-12-08')),
('A moto superou minhas expectativas.', 3, CONVERT(DATE, '2024-01-23')),
('Recomendo a concessionária para todos os meus amigos.', 9, CONVERT(DATE, '2022-05-26')),
('O processo de compra foi rápido e eficiente.', 22, CONVERT(DATE, '2023-11-03')),
('Estou adorando minha nova moto!', 33, CONVERT(DATE, '2024-01-12')),
('Equipe muito prestativa e profissional.', 4, GETDATE()),
('Muito feliz com minha escolha.', 29, CONVERT(DATE, '2022-07-11')),
('Excelente qualidade dos produtos oferecidos.', 41, CONVERT(DATE, '2022-04-20')),
('Foi uma experiência de compra muito positiva.', 33, CONVERT(DATE, '2022-12-30'));



ALTER TABLE VENDAS
ADD Valor_Compra_Moto MONEY


UPDATE Vendas 
SET VENDAS.VALOR_COMPRA_MOTO = M.VALOR
FROM Vendas	
JOIN Moto M
	ON M.Id_Moto = Vendas.Id_Moto



ALTER TABLE MOTO
ADD Data_Atualizacao DATETIME DEFAULT GETDATE();

UPDATE Moto
SET Data_Atualizacao = '2020-05-20T00:00:00.000';
