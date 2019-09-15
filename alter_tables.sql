alter table
  Funcionario drop column Logradouro;
alter table
  Funcionario
add
  column Logradouro varchar(3) NOT NULL;
alter table
  Medico drop column Logradouro;
alter table
  Medico
add
  column Logradouro varchar(3) NOT NULL;
alter table
  Paciente drop column Logradouro;
alter table
  Paciente
add
  column Logradouro varchar(3);