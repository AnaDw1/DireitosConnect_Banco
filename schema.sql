CREATE DATABASE DireitosConnect; --criação do banco de dados
USE DireitosConnect;

CREATE TABLE pessoa ( --criação da tabela pessoa
    id INT NOT NULL PRIMARY KEY IDENTITY, --id unico para cada pessoa/usuário
    CPF CHAR(11) NOT NULL UNIQUE,
    nome VARCHAR(50),
    email VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(50) NOT NULL
);

CREATE TABLE cliente ( --tabela cliente ou usuário
    id_pessoa INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id)
);

CREATE TABLE advogado (
    id_pessoa INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id),
    cadastro_oab VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE conversa (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    id_remetente INT NOT NULL,
    id_destinatario INT NOT NULL,
    FOREIGN KEY (id_remetente) REFERENCES pessoa (id),
    FOREIGN KEY (id_destinatario) REFERENCES pessoa (id)
);

CREATE TABLE mensagem (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    id_conversa INT NOT NULL,
    FOREIGN KEY (id_conversa) REFERENCES conversa (id),
    id_emissor INT NOT NULL,
    tipo_conteudo VARCHAR(20), -- 'imagem' / 'video' / 'texto'/ 'link' / 'audio'
    conteudo VARCHAR(255)
);

 CREATE TABLE tipo_assinatura (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(30) NOT NULL, -- --'Básica', 'Premium', 'Avançada', 'Empresarial', 'Individual', 'Personalizada'
    valor FLOAT NOT NULL
);

CREATE TABLE assinatura (
    id INT NOT NULL PRIMARY KEY IDENTITY,
	id_assinatura INT NOT NULL,
    id_pessoa INT NOT NULL,
	FOREIGN KEY (id_assinatura) REFERENCES tipo_assinatura  (id),
    FOREIGN KEY (id_pessoa) REFERENCES pessoa (id)
);

CREATE TABLE forma_pagamento (
    id_forma_pagamento INT NOT NULL PRIMARY KEY IDENTITY,
    nome_forma_pagamento VARCHAR(30) NOT NULL --Cartão de Crédito, Boleto Bancário, Transferência Bancária, PayPal, Débito Automático, Pix
);

CREATE TABLE pagamento (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    data_pagamento DATE,
    id_assinatura INT NOT NULL,
    id_forma_pagamento INT NOT NULL,
    FOREIGN KEY (id_assinatura) REFERENCES tipo_assinatura(id),
    FOREIGN KEY (id_forma_pagamento) REFERENCES forma_pagamento(id_forma_pagamento)
);


CREATE TABLE area_juridica (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    nome VARCHAR(50)
	);

CREATE TABLE caso_juridico (
    id INT NOT NULL PRIMARY KEY IDENTITY,
    titulo VARCHAR(50),
    descricao VARCHAR(255),
    id_cliente INT NOT NULL,
    id_advogado INT NOT NULL,
	id_area_juridica int not null,
	 FOREIGN KEY (id_area_juridica) REFERENCES area_juridica (id),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_pessoa),
    FOREIGN KEY (id_advogado) REFERENCES advogado (id_pessoa)
);
