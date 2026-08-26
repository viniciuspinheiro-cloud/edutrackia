// Query all STATUS_CLIENTE records
query status_cliente verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $status_cliente
  }

  response = $status_cliente
}