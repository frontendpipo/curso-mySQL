-- Aprimorando nosso banco de dados.
DROP DATABASE cadastro;
-- Deleta o banco de dados. (Ctrl + Enter para realizar comando)
create database cadastro
default character set utf8
default collate utf8_general_ci;
-- Define a linguagem a se utilizar no banco de dados.
create table pessoas (
id int not null auto_increment
/* Criamos uma identificação para cada usuário, com  o
   comando 'auto_increment', para que automaticamente cada usuário
   tenha seu ID de forma sequencial (o primeiro = 1, segundo = 2 etc.)
*/
nome varchar(30) not null,
-- Com o 'not null', deixamos proibido deixar esse espaço vazio.
-- Isto é, todos devem ter nome.
nascimento date,
-- O atributo 'idade' foi alterado para 'nascimento'.
sexo enum('M', 'F'),
-- Utilizando enum('parâmetros') deixamos claro que no registro
-- "sexo", só poderá entrar como informação um dos dois parâmetros dados.
peso decimal(5,2),
-- Utilizando este comando, deixamos 5 casas numéricas e, destas 5,
-- 2 casas após a vírgula (Ex.: 153,45 kg)
altura decimal (3,2),
-- Ex.: (1,75 m)
nacionalidade varchar(20) default 'Brasil'
/* Com este comando deixamos claro que se não entrar nenhuma outra
 informação, o padrão será 'Brasil'. */
primary key (id)
/* Com a 'primary key', proibimos que cada ID se repita, ou seja,
   nenhum usuário pode ter o mesmo ID, para que não seja criado mais
   de um mesmo usuário por acidente.
*/
)default charset = utf8;
-- Utilizado no final da tabela para padronizar a linguagem.