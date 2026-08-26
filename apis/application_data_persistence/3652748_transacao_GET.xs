// Query all TRANSACAO records
query transacao verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query TRANSACAO {
      return = {type: "list"}
    } as $transacao
  }

  response = $transacao
}