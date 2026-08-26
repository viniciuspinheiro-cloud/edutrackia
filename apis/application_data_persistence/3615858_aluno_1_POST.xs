// Add Aluno 1 record
query aluno_1 verb=POST {
  api_group = "application Data Persistence"

  input {
    dblink {
      table = "Aluno 1"
    }
  }

  stack {
    db.add "Aluno 1" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $aluno_1
  }

  response = $aluno_1
}