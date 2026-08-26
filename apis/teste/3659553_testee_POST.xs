// Add TESTEE record
query testee verb=POST {
  api_group = "TESTE"

  input {
    dblink {
      table = "TESTEE"
    }
  }

  stack {
    db.add TESTEE {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $testee
  }

  response = $testee
}