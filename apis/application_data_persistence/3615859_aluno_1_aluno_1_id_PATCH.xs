// Edit Aluno 1 record
query "aluno_1/{aluno_1_id}" verb=PATCH {
  api_group = "application Data Persistence"

  input {
    int aluno_1_id? filters=min:1
    dblink {
      table = "Aluno 1"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "Aluno 1" {
      field_name = "id"
      field_value = $input.aluno_1_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $aluno_1
  }

  response = $aluno_1
}