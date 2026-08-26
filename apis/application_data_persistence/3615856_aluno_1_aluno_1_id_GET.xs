// Get Aluno 1 record
query "aluno_1/{aluno_1_id}" verb=GET {
  api_group = "application Data Persistence"

  input {
    int aluno_1_id? filters=min:1
  }

  stack {
    db.get "Aluno 1" {
      field_name = "id"
      field_value = $input.aluno_1_id
    } as $aluno_1
  
    precondition ($aluno_1 != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $aluno_1
}