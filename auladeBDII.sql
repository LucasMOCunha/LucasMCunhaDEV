create database cristal;

use cristal;

 create table funcionario (
 cpf varchar(14) primary key not null,
 nome varchar(80) not null,
 nomeSocial varchar(45),
 genero char(1) not null,
 dataNasc date not null,
 email varchar(45) unique not null,
 salario decimal(7,2) unsigned zerofill not null,
 `status` tinyint not null,
 fg decimal(6,2) unsigned zerofill null
 );

create table cristal.endereco (
    Funcionario_cpf varchar(14) primary key not null,
    uf char(2) not null, 
    cidade varchar(45) not null,
    bairro varchar(45) not null,
    rua varchar(45) not null,
    numero int not null, 
    comp varchar(45) null, 
    cep varchar(9) not null, 
    foreign key(Funcionario_cpf) references funcionario (cpf)
        references cristal.Funcionario (cpf)
        on update cascade on delete cascade
);

create table dependente (
    cpf varchar(14) primary key not null, 
    nome varchar(45) not null,
    dataNasc date not null,
    genero char(1) not null, 
    parentesco varchar(15) not null, 
    Funcionario_cpf varchar(14) not null, 
    foreign key (Funcionario_cpf)
        references cristal.funcionario (cpf)
        on update cascade on delete cascade
);

desc dependent; 
