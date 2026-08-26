// Solicitações de Cancelamentos de Pedidos recebidos do Clientes pelo Setor Pedidos
table SOLCANCELAMENTO {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text motivo? filters=trim
    int pedido_id? {
      table = "PEDIDO"
    }
  
    int status_oe_id? {
      table = "STATUS_OE"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}