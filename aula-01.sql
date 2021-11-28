/*
Bancos de dados guardam tabelas, tabelas guardam registros.
 Registros guardam campos.
Arquivos sequenciais (registros são acessados sequencialmente);
Arquivos diretos (registros são acessados de maneira direta).

Banco de dados é composto por:
 Base de dados (os dados propriamente ditos);
 Sistema gerenciador (SGBD ou DMS);
 Linguagem de exploração;
 Programas adicionais.
Neste curso iremos utilizar o MySQl, que contém comandos específicos como:
 Comandos DDL = Definição;
 Comandos DML = Manipulação;
 Comandos DQL = Solicitações;
 Comandos DCL = Controle;
Comandos DTL = Transações, que por si só têm seus requisitos:
  ACID ou DICA:
  A - Atomicidade (Toda transação tem de ser atômica, ou seja,
    ou a transação é feita inteira ou nenhuma transação será feita);
 C - Consistência (Toda transação tem de levar o banco de dados de um estado consistente a outro consistente,
    ou seja, se funcionava antes, tem de funcionar consistentemente depois);
 I - Isolamento (Se tenho duas transações ocorrendo ao mesmo, elas têm de ser isoladas,
    ou seja, uma não afetar a outra);
 D - Durabilidade (Todo dado manipulado tem de permanecer durável).
*/