CREATE DATABASE hospitalteste;
use hospitalteste;
SET SQL_SAFE_UPDATES = 0;

create table Paciente (
	idPaciente int NOT NULL AUTO_INCREMENT,
    Nome varchar(45) NOT NULL,
    Sobrenome varchar(45) NOT NULL, 
    DataNascimento date NOT NULL,
    CPF char(11) UNIQUE,
    DDD char(2),
    Telefone nchar(10),
    CEP char(8),
    Logradouro varchar(45),
    Endereco varchar(45),
    Numero char(4),
    Email NVARCHAR(320),
    PRIMARY KEY (idPaciente)
);

create table Departamento (
	idDepartamento int NOT NULL AUTO_INCREMENT,
    NomeDepartamento varchar(45) NOT NULL UNIQUE,
    PRIMARY KEY (idDepartamento)
);
    
create table Consultorio (
	idConsultorio int NOT NULL AUTO_INCREMENT,
    NumeroConsultorio int NOT NULL UNIQUE,
    idDepartamento int,
    PRIMARY KEY (idConsultorio),
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);

create table TipoExame (
	idTipoExame int NOT NULL AUTO_INCREMENT,
    NomeExame varchar(45) NOT NULL UNIQUE,
    PRIMARY KEY (idTipoExame)
);

create table Especialidade (
	idEspecialidade int NOT NULL AUTO_INCREMENT,
    NomeEspecialidade varchar(45) NOT NULL UNIQUE,
    PRIMARY KEY (idEspecialidade)
);

create table Medico (
	idMedico int NOT NULL AUTO_INCREMENT,
    Nome varchar(45) NOT NULL,
    Sobrenome varchar(45) NOT NULL,
    DataNascimento date NOT NULL,
    CPF char(11) NOT NULL UNIQUE,
    CRM varchar(10) NOT NULL UNIQUE,
    DDD char(2) NOT NULL,
    Telefone nchar(10) NOT NULL,
    CEP char(8) NOT NULL,
    Logradouro varchar(45) NOT NULL,
    Endereco varchar(45) NOT NULL UNIQUE,
    Numero char(4) NOT NULL,
    Email nvarchar(320) NOT NULL,
    PRIMARY KEY (idMedico)
);

create table Medico_tem_Especialidade (
	idMedico int,
    idEspecialidade int,
    FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
    FOREIGN KEY (idEspecialidade) REFERENCES Especialidade (idEspecialidade)
);

create table Funcionario (
	idFuncionario int NOT NULL AUTO_INCREMENT,
    Nome varchar(45) NOT NULL,
    Sobrenome varchar(45) NOT NULL,
    DataNascimento date NOT NULL,
    CPF char(11) NOT NULL UNIQUE,
    DDD char(2) NOT NULL,
    Telefone nchar(10) NOT NULL,
    CEP char(8) NOT NULL,
    Logradouro varchar(45) NOT NULL,
    Endereco varchar(45) NOT NULL,
    Numero char(4) NOT NULL,
    Email nvarchar(320) NOT NULL,
    idDepartamento int NOT NULL,
    PRIMARY KEY (idFuncionario),
    FOREIGN KEY (idDepartamento) REFERENCES Departamento (idDepartamento)
);

create table Consulta (
	idConsulta int NOT NULL AUTO_INCREMENT,
    Data date NOT NULL,
    Hora time NOT NULL,
    Historico varchar(45),
    idPaciente int,
    idMedico int,
    idConsultorio int,
    PRIMARY KEY (idConsulta),
    FOREIGN KEY (idPaciente) REFERENCES Paciente (idPaciente),
    FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
    FOREIGN KEY (idConsultorio) REFERENCES Consultorio (idConsultorio)
);

create table Exame (
	idExame int NOT NULL AUTO_INCREMENT,
    Data date NOT NULL,
    Hora time NOT NULL,
    idPaciente int,
    idMedico int,
    idTipoExame int,
    PRIMARY KEY (idExame),
    FOREIGN KEY (idPaciente) REFERENCES Paciente (idPaciente),
    FOREIGN KEY (idMedico) REFERENCES Medico (idMedico),
    FOREIGN KEY (idTipoExame) REFERENCES TipoExame (idTipoExame)
);

alter table Funcionario
	drop column Logradouro;
alter table Funcionario
	add column Logradouro varchar(3) NOT NULL;
-- describe Funcionario;

alter table Medico
	drop column Logradouro;
alter table Medico
	add column Logradouro varchar(3) NOT NULL;
-- describe Medico;

alter table Paciente
	drop column Logradouro;
alter table Paciente
	add column Logradouro varchar(3);
-- describe Paciente;

insert into TipoExame (idTipoExame, NomeExame)
	values (1, "Teste");
insert into TipoExame (NomeExame)
	values("Workou");

insert into Especialidade (NomeEspecialidade)
	values("Cardiologista"),("Terraplanista"),("Me deleta"),("Pode deletar");

insert into Departamento (NomeDepartamento)
	values ("Departamento Maneiro");

insert into Consultorio (NumeroConsultorio)
	values (123),(42),(12);

insert into Consultorio(NumeroConsultorio, idDepartamento)
	values (432,1);

insert into Medico (Nome, Sobrenome, DataNascimento, CPF, CRM, DDD, Telefone, CEP, Endereco, Numero, Email,Logradouro)
	values("Mateus","Nicolas","1998-08-21","09028824901","423","41","992327608","80730320","Dona Alice Tibiriçá","405","mateusnicolasup@gmail.com","R"),
    ("Anthony", "Thiago da Mota","1978-03-02","27871684698","422","95","28667704","69309630","Rua das Rosas","280","anthonythiagodamota_@deca.com.br","AC"),
    ("Celso","Porta","2005-06-08","91699515000","122","11","26730166","8960000","Rua Lavouras","401","rrafaelviniciusmateusassuncao@novadeliveri.com.br","R"),
    ("Heloisa Antônia", "Natália de Paula","1976-04-07","48030659938","123","71","35634275","40430240","Rua Almirante Barroso","137","hheloisaantonianataliadepaula@eldor.it","R");

insert into Paciente (Nome,Sobrenome, DataNascimento)
	values("Flavio","Branco","1960-09-04"),("Abner","Landim","1998-12-17"),("Lucas","Okada","1998-03-18");

insert into Funcionario (Nome, Sobrenome, DataNascimento, CPF, DDD, Telefone, CEP, Endereco, Numero, Email, idDepartamento, Logradouro)
	values ("Carlos", "Kuretzki", "1960-04-08","54887612095","41","99140277","89600000","Algum canto","32", "carlos@carlos.pro.br",1,"R");

insert into Exame (Data, Hora, idPaciente, idMedico, idTipoExame)
	values("2019-09-12","19:00:00",1,1,1),
    ("2011-04-06","18:00:00",1,2,1),
    ("2013-04-02","18:04:00",1,3,1),
    ("2016-01-04","18:30:05",1,4,1);

insert into Consulta (Data, Hora, Historico, idPaciente, idConsultorio, idMedico)
	values("2019-09-05","19:00:00","Câncer na bundinha",1,1,1),("2009-09-05","19:00:00","Iaí Carlos",1,1,1),("2009-09-10","19:00:00","Tudo beleza?",1,1,1);

select * from medico_tem_especialidade;
update Funcionario
	set Endereco = "Casa dele ué"
	where 1=1
	and Nome = "Carlos"
	and Sobrenome = "Kuretzki";

update Paciente
	set CPF = "09028824901"
    where 1=1
    and Nome = "Flávio"
    and Sobrenome = "Branco";

update Especialidade
	set NomeEspecialidade = "Comer cu de quem da update sem where"
    where 1=1
    and idEspecialidade = 2;

delete from Especialidade
	where 1=1
    and NomeEspecialidade = "Comer cu de quem da update sem where";

delete from Paciente
	where 1=1
    and Nome = "Lucas"
    or Sobrenome = "Landim";

delete from Consultorio
	where 1=1
    and NumeroConsultorio BETWEEN 10 and 100;

delete from Especialidade
	where 1=1
    and NomeEspecialidade LIKE "%delet%";
    
CREATE VIEW ConsultorioDepartamento AS
SELECT Departamento.idDepartamento,Departamento.NomeDepartamento, Consultorio.idConsultorio,Consultorio.NumeroConsultorio
FROM Departamento
INNER JOIN Consultorio
ON Consultorio.idDepartamento = Departamento.idDepartamento;

select * from ConsultorioDepartamento;


CREATE view MedicoExamePaciente AS
select Medico.[idMedico,Sobrenome], Exame.Data,Exame.Hora,Paciente.*
from Exame
RIGHT JOIN Medico ON Medico.idMedico = Exame.idMedico
RIGHT JOIN Paciente ON Paciente.idPaciente = Exame.idPaciente;


select * from MedicoExamePaciente;









