// Delete status_pedido record.
query "status_pedido/{status_pedido_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int status_pedido_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.status_pedido_id
    }
  }

  response = null
}