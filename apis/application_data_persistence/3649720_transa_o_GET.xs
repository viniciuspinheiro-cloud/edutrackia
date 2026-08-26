// Query all Transação records
query transa_o verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $transa_o
  }

  response = $transa_o
}