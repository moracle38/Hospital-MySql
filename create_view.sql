CREATE VIEW ConsultorioDepartamento AS
SELECT
  Departamento.idDepartamento,
  Departamento.NomeDepartamento,
  Consultorio.idConsultorio,
  Consultorio.NumeroConsultorio
FROM
  Departamento
  INNER JOIN Consultorio ON Consultorio.idDepartamento = Departamento.idDepartamento;
CREATE view MedicoExamePaciente AS
select
  Exame.idExame,
  Exame.Data,
  Exame.Hora,
  Exame.idMedico e_idMedico,
  Exame.idPaciente e_idPaciente,
  Medico.idMedico,
  Medico.NomeMedico,
  Medico.SobrenomeMedico,
  Medico.CRM,
  Paciente.idPaciente,
  Paciente.NomePaciente,
  Paciente.SobrenomePaciente
from
  Exame
  INNER JOIN Medico ON Medico.idMedico = Exame.idMedico
  INNER JOIN Paciente ON Paciente.idPaciente = Exame.idPaciente
ORDER BY
  Data desc;