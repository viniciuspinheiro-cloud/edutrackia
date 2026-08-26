// Status possíveis dos clientes
table STATUS_CLIENTE {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    text status? filters=trim
    text nome? filters=trim
    text email? filters=trim
    text senha? filters=trim
    text celular? filters=trim
    text cpf? filters=trim
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}