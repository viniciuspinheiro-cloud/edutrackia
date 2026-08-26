// Delete statuss_cliente record.
query "statuss_cliente/{statuss_cliente_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int statuss_cliente_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.statuss_cliente_id
    }
  }

  response = null
}