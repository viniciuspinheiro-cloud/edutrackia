// Delete Aluno 1 record.
query "aluno_1/{aluno_1_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int aluno_1_id? filters=min:1
  }

  stack {
    db.del "Aluno 1" {
      field_name = "id"
      field_value = $input.aluno_1_id
    }
  }

  response = null
}