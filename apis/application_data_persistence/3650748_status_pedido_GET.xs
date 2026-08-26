// Query all status_pedido records
query status_pedido verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $status_pedido
  }

  response = $status_pedido
}