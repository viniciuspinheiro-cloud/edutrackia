// Get statuss_cliente record
query "statuss_cliente/{statuss_cliente_id}" verb=GET {
  api_group = "application Data Persistence"

  input {
    int statuss_cliente_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.statuss_cliente_id
    } as $statuss_cliente
  
    precondition ($statuss_cliente != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $statuss_cliente
}