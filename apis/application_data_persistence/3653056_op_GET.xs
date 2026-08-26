// Query all OP records
query op verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query OP {
      return = {type: "list"}
    } as $op
  }

  response = $op
}