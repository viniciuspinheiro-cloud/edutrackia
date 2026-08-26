// Query all statuss_cliente records
query statuss_cliente verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $statuss_cliente
  }

  response = $statuss_cliente
}