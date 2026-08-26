// Query all TESTEE records
query testee verb=GET {
  api_group = "TESTE"

  input {
  }

  stack {
    db.query TESTEE {
      return = {type: "list"}
    } as $testee
  }

  response = $testee
}