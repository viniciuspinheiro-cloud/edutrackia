// Query all SOLCANCELAMENTO records
query solcancelamento verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query SOLCANCELAMENTO {
      return = {type: "list"}
    } as $solcancelamento
  }

  response = $solcancelamento
}