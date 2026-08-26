// Delete TESTEE record.
query "testee/{testee_id}" verb=DELETE {
  api_group = "TESTE"

  input {
    int testee_id? filters=min:1
  }

  stack {
    db.del TESTEE {
      field_name = "id"
      field_value = $input.testee_id
    }
  }

  response = null
}