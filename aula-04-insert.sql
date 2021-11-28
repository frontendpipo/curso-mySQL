/*
Os comandos que utilizamos para criar o banco de dados e a tabela são
os DDLs (Data Definition Language). São comandos de definição.
Os campos que atribuímos aos registros da tabela são:
 (id, nome, nascimento, sexo, peso, altura, nacionalidade)
*/
insert into pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default,'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);
/*
Nós inserimos os dados no registro com esse comando.
O 'default' no id e nacionalidade são justamente pelos comandos
'auto_increment' e 'default' utilizados quando construímos os parâmetros
do nosso banco de dados.
*/
select * from pessoas;
-- Através do comando acima conseguimos visualizar nossos registros.
/*
Se inserir dados e a ordem for a mesma dos campos, não é nem preciso
reescrever os parâmetros.
*/
insert into pessoas values
(default,'Adalgiza', '1930-11-02', 'F', '63.2', '1.75', 'Irlanda');
-- Desse jeito.

-- O comando 'insert into' é uma DML (Data Manipulation Language),
-- comando de manipulação de dados.