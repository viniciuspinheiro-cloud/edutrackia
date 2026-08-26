// Edit statuss_cliente record
query "statuss_cliente/{statuss_cliente_id}" verb=PATCH {
  api_group = "application Data Persistence"

  input {
    int statuss_cliente_id? filters=min:1
    dblink {
      table = ""
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "" {
      field_name = "id"
      field_value = $input.statuss_cliente_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $statuss_cliente
  }

  response = $statuss_cliente
}