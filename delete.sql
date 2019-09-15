delete from
  Especialidade
where
  1 = 1
  and NomeEspecialidade = "Comer cu de quem da update sem where";
delete from
  Paciente
where
  1 = 1
  and NomePaciente = "Lucas"
  or SobrenomePaciente = "Landim";
delete from
  Consultorio
where
  1 = 1
  and NumeroConsultorio BETWEEN 10
  and 100;
delete from
  Especialidade
where
  1 = 1
  and NomeEspecialidade LIKE "%delet%";