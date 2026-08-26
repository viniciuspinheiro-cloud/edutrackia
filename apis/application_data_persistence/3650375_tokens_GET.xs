// Query all tokens records
query tokens verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $tokens
  }

  response = $tokens
}