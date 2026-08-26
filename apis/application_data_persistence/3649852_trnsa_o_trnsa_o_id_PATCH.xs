// Edit trnsação record
query "trnsa_o/{trnsa_o_id}" verb=PATCH {
  api_group = "application Data Persistence"

  input {
    int trnsa_o_id? filters=min:1
    dblink {
      table = ""
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch "" {
      field_name = "id"
      field_value = $input.trnsa_o_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $trnsa_o
  }

  response = $trnsa_o
}