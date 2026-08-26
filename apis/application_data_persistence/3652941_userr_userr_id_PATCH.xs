// Edit userr record
query "userr/{userr_id}" verb=PATCH {
  api_group = "application Data Persistence"

  input {
    int userr_id? filters=min:1
    dblink {
      table = "userr"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch userr {
      field_name = "id"
      field_value = $input.userr_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $userr
  }

  response = $userr
}