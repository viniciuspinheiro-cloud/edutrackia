// Delete userr record.
query "userr/{userr_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int userr_id? filters=min:1
  }

  stack {
    db.del userr {
      field_name = "id"
      field_value = $input.userr_id
    }
  }

  response = null
}