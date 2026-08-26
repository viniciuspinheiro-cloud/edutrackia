// Edit TESTEE record
query "testee/{testee_id}" verb=PATCH {
  api_group = "TESTE"

  input {
    int testee_id? filters=min:1
    dblink {
      table = "TESTEE"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch TESTEE {
      field_name = "id"
      field_value = $input.testee_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $testee
  }

  response = $testee
}