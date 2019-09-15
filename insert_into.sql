insert into
  TipoExame (idTipoExame, NomeExame)
values
  (1, "Teste");
insert into
  TipoExame (NomeExame)
values("Workou");
insert into
  Especialidade (NomeEspecialidade)
values("Cardiologista"),("Terraplanista"),("Me deleta"),("Pode deletar");
insert into
  Departamento (NomeDepartamento)
values
  ("Departamento Maneiro");
insert into
  Consultorio (NumeroConsultorio)
values
  (123),(42),(12);
insert into
  Consultorio(NumeroConsultorio, idDepartamento)
values
  (432, 1);
insert into
  Medico (
    NomeMedico,
    SobrenomeMedico,
    DataNascimento,
    CPFMedico,
    CRM,
    DDD,
    Telefone,
    CEP,
    Endereco,
    Numero,
    Email,
    Logradouro
  )
values(
    "Mateus",
    "Nicolas",
    "1998-08-21",
    "09028824901",
    "423",
    "41",
    "992327608",
    "80730320",
    "Dona Alice Tibiriçá",
    "405",
    "mateusnicolasup@gmail.com",
    "R"
  ),
  (
    "Anthony",
    "Thiago da Mota",
    "1978-03-02",
    "27871684698",
    "422",
    "95",
    "28667704",
    "69309630",
    "Rua das Rosas",
    "280",
    "anthonythiagodamota_@deca.com.br",
    "AC"
  ),
  (
    "Celso",
    "Porta",
    "2005-06-08",
    "91699515000",
    "122",
    "11",
    "26730166",
    "8960000",
    "Rua Lavouras",
    "401",
    "rrafaelviniciusmateusassuncao@novadeliveri.com.br",
    "R"
  ),
  (
    "Heloisa Antônia",
    "Natália de Paula",
    "1976-04-07",
    "48030659938",
    "123",
    "71",
    "35634275",
    "40430240",
    "Rua Almirante Barroso",
    "137",
    "hheloisaantonianataliadepaula@eldor.it",
    "R"
  );
insert into
  Paciente (NomePaciente, SobrenomePaciente, DataNascimento)
values("Flavio", "Branco", "1960-09-04"),("Abner", "Landim", "1998-12-17"),("Lucas", "Okada", "1998-03-18");
insert into
  Funcionario (
    NomeFuncionario,
    SobrenomeFuncionario,
    DataNascimento,
    CPFFuncionario,
    DDD,
    Telefone,
    CEP,
    Endereco,
    Numero,
    Email,
    idDepartamento,
    Logradouro
  )
values
  (
    "Carlos",
    "Kuretzki",
    "1960-04-08",
    "54887612095",
    "41",
    "99140277",
    "89600000",
    "Algum canto",
    "32",
    "carlos@carlos.pro.br",
    1,
    "R"
  );
insert into
  Exame (Data, Hora, idPaciente, idMedico, idTipoExame)
values("2019-09-12", "19:00:00", 1, 1, 1),
  ("2011-04-06", "18:00:00", 1, 2, 1),
  ("2013-04-02", "18:04:00", 1, 3, 1),
  ("2016-01-04", "18:30:05", 1, 4, 1);
insert into
  Consulta (
    Data,
    Hora,
    Historico,
    idPaciente,
    idConsultorio,
    idMedico
  )
values(
    "2019-09-05",
    "19:00:00",
    "Câncer na bundinha",
    1,
    1,
    1
  ),("2009-09-05", "19:00:00", "Iaí Carlos", 1, 1, 1),(
    "2009-09-10",
    "19:00:00",
    "Tudo beleza?",
    1,
    1,
    1
  );