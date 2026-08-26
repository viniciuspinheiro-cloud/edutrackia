// Query all Aluno 1 records
query aluno_1 verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "Aluno 1" {
      return = {type: "list"}
    } as $aluno_1
  }

  response = $aluno_1
}