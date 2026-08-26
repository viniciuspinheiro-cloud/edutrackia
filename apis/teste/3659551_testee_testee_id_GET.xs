// Get TESTEE record
query "testee/{testee_id}" verb=GET {
  api_group = "TESTE"

  input {
    int testee_id? filters=min:1
  }

  stack {
    db.get TESTEE {
      field_name = "id"
      field_value = $input.testee_id
    } as $testee
  
    precondition ($testee != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $testee
}