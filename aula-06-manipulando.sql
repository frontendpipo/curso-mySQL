insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer kibe', '40', '30', '2018'),
('10', 'Youtuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');
-- Valores inseridos na tabela criada na aula anterior. Está com erros propositais!
update cursos
set nome = 'HTML5'
where idcurso = '1';
-- Modifique cursos, configurando "nome" = 'HTML5', onde "idcurso" = '1'.
update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';
-- 
update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;
-- limit foi utilizado para limitar o número de linhas a serem alteradas no caso de possíveis erros.

-- O caso a seguir será um caso de erro.
update cursos
set ano = '2050', carga = '800'
where ano = '2018';
-- O comando acima atualiza para 2050 e carga de 800 todos registros onde ano = '2018', pois não foi definido
-- limit 1.

delete from cursos
where idcurso = '8';
-- Removendo uma linha de uma tabela.
delete from cursos
where ano = '2050'
limit 2;
-- Removendo mais de uma linha de uma tabela.
truncate table cursos ou
truncate cursos;
-- Removendo todas as linhas de uma tabela

-- Os comandos:
update
delete e 
truncate
-- São DMLs (Data Manipulation Language) ou comandos de manipulação de dados.