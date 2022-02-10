INSERT INTO
	enderecos(rua, pais, cidade)
VALUES
	('Avenida Higienópolis','Brasil','Londrina'),
	('Avenida Paulista', 'Brasil', 'São Paulo'),
	('Rua Marcelino Champagnat', 'Brasil', 'Curitiba');
	
INSERT INTO 
	usuarios(nome, email, senha, endereco_id) 
VALUES 
	('Cauan','cauan@exemple.com','1234', (select id from enderecos where rua like '%Paulista%' and cidade = 'São Paulo')),
	('Chrystian','chrystian@exemple.com','4321', (select id from enderecos where rua like '%Marcelino%' and cidade = 'Curitiba')),
	('Matheus','matheus@exemple.com','3214',(select id from enderecos where rua like '%Higienópolis%' and cidade = 'Londrina'));
	
INSERT INTO 
	redes_sociais(nome)
VALUES
	('Youtube'),
	('Twitter'),
	('Instagram'),
	('Facebook'),
	('TikTok');

INSERT INTO 
	usuario_rede_sociais(usuario_id,rede_social_id)
VALUES
	((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'Youtube')),
	((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Youtube')),
	((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Youtube')),
	((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Twitter')),
	((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'Twitter')),
	((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Instagram')),
	((select id from usuarios where nome = 'Matheus'), (select id from redes_sociais where nome = 'Facebook')),
	((select id from usuarios where nome = 'Chrystian'), (select id from redes_sociais where nome = 'Instagram')),
	((select id from usuarios where nome = 'Cauan'), (select id from redes_sociais where nome = 'TikTok'));