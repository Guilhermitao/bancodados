create database if not exists aula1608;
use aula1608;

create table if not exists pessoa(
cod_pessoa int auto_increment,
nome_pessoa varchar(40) not null,
cpf_pessoa char(11) not null unique,
data_nasci_pessoa date,
constraint check_cpf check (length(cpf_pessoa)=11),
primary key (cod_pessoa)
);
insert into pessoa(nome_pessoa,cpf_pessoa,data_nasci_pessoa)
values("Guilherme Leandro Gomes Oliveira",12345678911,"2002/10/29"),
("Fulano Ricardo OLiveira",21345678911,"2000/05/19");

select * from pessoa;

/*delimiter*/
create FUNCTION func_teste(nome varchar(45))
returns varchar (50)
return concat("o seu nome é: ",nome);

select func_teste(nome_pessoa) from pessoa;

create FUNCTION func_idade(data_nasci_pessoa date)
returns varchar(45)
return timestampdiff(year,data_nasci_pessoa,curdate());

select func_idade(data_nasci_pessoa) from pessoa;

select nome_pessoa,func_idade(data_nasci_pessoa) from pessoa;























































