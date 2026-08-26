// Query all CLIENTE records
query cliente verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query CLIENTE {
      return = {type: "list"}
    } as $cliente
  }

  response = $cliente
}