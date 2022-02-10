-- select 1
SELECT * FROM enderecos;
	
-- select 2

SELECT 
	*
FROM 
	enderecos e
JOIN 
	usuarios u
	ON e.id = u.id 
ORDER BY e.id;

--select 3

SELECT 
	rs.id ,rs.nome, u.id, u.nome, email, senha, endereco_id  
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.id = rs.id
JOIN usuarios u 
	ON u.id = urs.id ;
	
-- select 4
	
SELECT 
	*
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.id 
JOIN 
	enderecos e
	ON e.id = u.id ;

-- select 5

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.id 
JOIN 
	enderecos e
	ON e.id = u.id ;

-- select 6

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.id 
JOIN 
	enderecos e
	ON e.id = u.id 
WHERE rs.nome = 'Youtube';

-- select 7

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.id 
JOIN 
	enderecos e
	ON e.id = u.id 
WHERE rs.nome = 'Instagram';

-- select 8

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.usuario_id 
JOIN 
	enderecos e
	ON e.id = u.id 
WHERE rs.nome = 'Facebook';

-- select 9

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.usuario_id 
JOIN 
	enderecos e
	ON e.id = u.id 
WHERE rs.nome = 'TikTok';

-- select 10 

SELECT 
	rs.nome, u.nome, u.email, e.cidade 
FROM 
	redes_sociais rs 
JOIN 
	usuario_rede_sociais urs 
	ON urs.rede_social_id = rs.id
JOIN 
	usuarios u 
	ON u.id = urs.usuario_id 
JOIN 
	enderecos e
	ON e.id = u.id 
WHERE rs.nome = 'Twitter';