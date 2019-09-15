create table Paciente (
    idPaciente int NOT NULL AUTO_INCREMENT,
    NomePaciente varchar(45) NOT NULL,
    SobrenomePaciente varchar(45) NOT NULL,
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
    NomeMedico varchar(45) NOT NULL,
    SobrenomeMedico varchar(45) NOT NULL,
    DataNascimento date NOT NULL,
    CPFMedico char(11) NOT NULL UNIQUE,
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
    NomeFuncionario varchar(45) NOT NULL,
    SobrenomeFuncionario varchar(45) NOT NULL,
    DataNascimento date NOT NULL,
    CPFFuncionario char(11) NOT NULL UNIQUE,
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