alter table pessoas
add column profissao varchar(10);
-- Com este comando, alteramos a tabela e adicionamos um novo
-- parâmetro a ela ('profissão').
alter table pessoas
drop column profissao;
-- Para deleletar a mesma coluna.
alter table pessoas
add column profissao varchar(10) after nome;
-- Ou...
alter table pessoas
add column profissao varchar(10) first;
-- Ao invés de simplesmente adicionar uma coluna, esse comando
-- define a posição da coluna em relação às demais.
alter table pessoas
modify column profissao varchar(20);
-- Acabamos de adicionar mais 10 caracteres ao varchar com o 'modify'.
alter table pessoas
add column profissao varchar(20) not null default '' after nome;
-- Usei o 'drop' e depois esse comando para alterar o estado de null e default.
alter table pessoas
change column profissao prof varchar(20) not null default'';
-- Usado para renomear a coluna (mesmo para renomear a coluna,
-- usar todas as constraints).
alter table pessoas
rename to cidadãos;
-- O 'rename to' é usado para alterar o nome da tabela inteira.
create table if not exists cursos (
-- Criamos uma tabela nova com o comando 'if not exists', que permite
-- criar uma tabela apenas se a mesma não já existir. Nos impede de
-- sobrescrever uma tabela existente. (Também pode ser usado 'if exists'.)
nome varchar(30) not null unique,
-- Criamos o parâmetro nome com a constraint 'unique', que define a
-- exclusividade de cada registro nesse parâmetro, sem necessariamente
-- ser uma primary key.
descricao text,
-- A constraint 'text' é usada para textos longos e descritivos.
carga int unsigned,
-- Para a carga horário e total de aulas, usamos a constraint 'unsigned'.
-- Ela define que não haverá sinal negativo antes dos números, ou seja,
-- todos os registros dentro desse campo serão número inteiro positivos.
-- Economiza bytes no banco de dados.
totaulas int unsigned,
ano year default '2021'
) default charset=utf8;
-- Padrão para podermos nomear os registros em português com acentos.
alter table cursos
add column idcurso int first;
-- Para criar uma nova coluna, conforme aprendemos.
alter table cursos
add primary key (idcurso);
-- Para que a coluna selecionada se torne uma primary key.

-- Os comandos 'alter table' e 'drop table' são ambos comandos DDL, 
-- ou seja, comandos de definição.