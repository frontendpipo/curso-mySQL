CREATE DATABASE cadastro;
-- Criar banco de dados.
CREATE TABLE pessoas (
    nome,
    sexo,
    idade,
    peso,
    altura,
    nacionalidade
);
/*
Criar tabela, nomeá-la e dar atributos.
Logo depois, dar tipos aos atributos.
Tipos primitivos:
 Numérico;
 Data/tempo;
 Literal;
 Espacial.
Obs.: Atributo como 'idade', por exemplo, não
se cadastraria no banco de dados, pois
a idade sempre irá se alterar.
Os tipos primitivos acima se dividem em subtipos:
 Numérico
  Inteiro: TinyInt, SmallInt, Int, MediumInt, BigInt;
  Real: Decimal, Float, Double, Real;
  Lógico: Bit, Boolean.
 Data/Tempo
  Date, DateTime, TimeStamp, Time, Year.
 Literal
  Caractere: Char, VarChar;
  Texto: TinyText, Text, MediumText, LongText;
  Binário: TinyBlob, Blob, MediumBlob, LongBlob;
  Coleção: Enum, Set.
 Espacial
  Geometry, Point, Polygon, MultiPolygon, etc.
*/
