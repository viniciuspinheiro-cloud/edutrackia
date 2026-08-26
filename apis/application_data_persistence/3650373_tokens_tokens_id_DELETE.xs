// Delete tokens record.
query "tokens/{tokens_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int tokens_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.tokens_id
    }
  }

  response = null
}