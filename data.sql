SET IDENTITY_INSERT pessoa ON;
INSERT INTO pessoa (id, CPF, nome, email, senha) 
VALUES 
(1,'12345678901', 'José da Silva', 'jose.silva@email.com', 'S3nh@123'),
(2,'98765432100', 'Ana Oliveira', 'ana.oliveira@email.com', 'x!Y2p#8sL@vR'),
(3,'11122233344', 'Carlos Alberto Santos', 'carlos.santos@email.com', '$Bw9k@4Gh*3n'),
(4,'55566677788', 'Amanda Costa', 'amanda.costa@email.com', '2!PdQ@7zF#1o'),
(5,'99988877766', 'Fernando Pereira', 'fernando.pereira@email.com', '1G$8q@3sR!6p'),
(6,'44433322211', 'Patrícia Lima', 'patricia.lima@email.com', 'Lima@2023'),
(7,'77788899900', 'Roberto Souza', 'roberto.souza@email.com', 'Souza!789'),
(8,'22211144455', 'Camila Martins', 'camila.martins@email.com', 'C@mila2023'),
(9,'66655544433', 'Lucas Oliveira', 'lucas.oliveira@email.com', 'L#cas123'),
(10,'33344455566', 'Aline Santos', 'aline.santos@email.com', '6!yE#9kPz$8o'),
(11,'88877766655', 'Juliana Lima', 'juliana.lima@email.com', 'Juli@na789'),
(12,'00011122233', 'Pedro Souza', 'pedro.souza@email.com', 'P#dr0XYZ');
SET IDENTITY_INSERT pessoa OFF;
SELECT * FROM pessoa;

INSERT INTO cliente (id_pessoa) 
VALUES
(1),
(2),
(3),
(7),
(8),
(9);
SELECT * FROM cliente;

INSERT INTO advogado (id_pessoa, cadastro_oab) 
VALUES
(4, '1065/CE'),
(5, '064705/RJ'),
(6, '11273/SP'),
(10, '94584/RJ'),
(11,'54893/BA'),
(12,'32697/SP');
SELECT * FROM advogado;

SET IDENTITY_INSERT conversa ON; 
INSERT INTO conversa (id, id_remetente, id_destinatario) 
VALUES
(1, 1, 4),
(2, 2, 5),
(3, 3, 6),
(4, 7, 10),
(5, 8, 11),
(6, 9, 12),
(7 , 10, 7),
(8, 11, 8),
(9, 12, 9),
(10, 6, 3),
(11, 5, 2),
(12, 4, 1);
SET IDENTITY_INSERT conversa OFF;
SELECT * FROM conversa;

SET IDENTITY_INSERT mensagem ON;
INSERT INTO mensagem (id, id_conversa, id_emissor, tipo_conteudo, conteudo)
VALUES
(1, 1, 1, 'texto', 'Prezada Sra.Amanda Costa, boa tarde. Gostaria de agendar uma reunião para discutir detalhes do seu caso. Por favor, informe sua disponibilidade.'),
(2, 2, 2, 'texto', 'Prezado Sr. Fernando Pereira, gostaria de discutir o parecer jurídico atualizado referente ao meu processo. Poderia agendar uma reunião para discutirmos os próximos passos?'),
(3, 3, 3, 'audio', 'Sra. Patrícia Lima, gostaria de discutir as últimas atualizações do meu caso.'),
(4, 4, 7, 'video', 'Prezada Advogada Aline Santos, gostaria de discutir se este vídeo explicativo sobre a legislação tributária que estou enviando se encaixa com meu caso.'),
(5, 5, 8, 'arquivo', 'Prezada Sra. Juliana Lima, estou te enviando o contrato revisado. Poderia discutir comigo as alterações propostas?'),
(6, 6, 9, 'link', 'Sr. Pedro, o link a seguir contém informações relevantes para minha situação legal.'),
(7, 7, 10, 'texto', 'Prezado Sr. Roberto Souza, precisamos discutir a estratégia de defesa para a audiência marcada. Por favor, agende um horário conveniente.'),
(8, 8, 11, 'audio', 'Sra. Camila Martins, encontrei jurisprudência relevante para o seu caso. Vou enviar os detalhes por e-mail para sua análise.'),
(9, 9, 12, 'texto', 'Sr. Carlos Alberto, deixei uma mensagem de voz com atualizações sobre o processo. Quando puder, dê uma conferida.'),
(10, 10, 6, 'video', 'Sr. Carlos Alberto, assista ao vídeo explicativo que preparei sobre os próximos passos do seu caso. Estou à disposição para esclarecimentos.'),
(11, 11, 5, 'texto', 'Sra. Ana Oliveira, revisei o contrato e destaquei pontos importantes. Podemos discutir durante nossa próxima reunião.'),
(12, 12, 4, 'link', 'Prezado Sro. Lucas Oliveira, o link abaixo contém informações atualizadas sobre as mudanças na legislação que podem impactar seu caso. Recomendo a leitura antes de nossa próxima consulta.');
SET IDENTITY_INSERT mensagem OFF;
SELECT * FROM mensagem;

SET IDENTITY_INSERT tipo_assinatura ON;
INSERT INTO tipo_assinatura (id, nome, valor) VALUES
(1, 'Básica', 50.00),
(2, 'Premium', 100.00),
(3, 'Avançada', 150.00),
(4, 'Empresarial', 200.00),
(5, 'Individual', 75.00),
(6, 'Personalizada', 250.00);
SET IDENTITY_INSERT tipo_assinatura OFF;
SELECT * FROM tipo_assinatura;

SET IDENTITY_INSERT assinatura ON;
INSERT INTO assinatura (id, id_pessoa, id_assinatura) VALUES
(1, 1, 1),
(2,2, 12),
(3,3, 6),
(4,4, 10),
(5,5, 4),
(6,6, 7);
SET IDENTITY_INSERT assinatura OFF;
SELECT * FROM assinatura;

SET IDENTITY_INSERT pagamento ON;
INSERT INTO pagamento (id, forma_pagamento, data_pagamento, id_assinatura) VALUES
(1, 'Cartão de Crédito', '2023-01-15', 1),
(2, 'Boleto Bancário', '2023-02-20', 2),
(3, 'Transferência Bancária', '2023-03-25', 3),
(4, 'PayPal', '2023-04-10', 4),
(5, 'Débito Automático', '2023-05-05', 5),
(6, 'Pix', '2023-06-15', 6);
SET IDENTITY_INSERT pagamento OFF;
SELECT * FROM pagamento;


SET IDENTITY_INSERT area_juridica ON;
INSERT INTO area_juridica (id, nome) 
VALUES
(1, 'Direito Civil'),
(2, 'Direito Penal'),
(3, 'Direito Trabalhista'),
(4, 'Direito Tributário'),
(5, 'Direito Empresarial'),
(6, 'Direito Ambiental');
SET IDENTITY_INSERT area_juridica OFF;
SELECT * FROM area_juridica;


SET IDENTITY_INSERT caso_juridico ON;
INSERT INTO caso_juridico (id, titulo, descricao, id_cliente, id_advogado, id_area_juridica) 
VALUES
(1, 'Defesa em Ação Trabalhista', 'Representação em ação trabalhista por rescisão injusta.', 3, 4, 3),
(2, 'Contrato de Locação', 'Assessoria na elaboração de contrato de locação comercial.', 2, 5, 5),
(3, 'Defesa Criminal', 'Assistência na defesa de acusação criminal por fraude.', 7, 6, 2),
(4, 'Regularização Ambiental', 'Processo de regularização ambiental para empresa do setor industrial.', 9, 10, 6),
(5, 'Negociação Empresarial', 'Mediação em disputa entre sócios de uma empresa.', 1, 11, 5),
(6, 'Ação de Indenização', 'Ajuizamento de ação de indenização por danos morais.',8 , 12, 1);
SET IDENTITY_INSERT caso_juridico OFF;
SELECT * FROM caso_juridico;

