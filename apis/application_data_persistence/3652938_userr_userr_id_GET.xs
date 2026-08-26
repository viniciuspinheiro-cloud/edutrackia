// Get userr record
query "userr/{userr_id}" verb=GET {
  api_group = "application Data Persistence"

  input {
    int userr_id? filters=min:1
  }

  stack {
    db.get userr {
      field_name = "id"
      field_value = $input.userr_id
    } as $userr
  
    precondition ($userr != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $userr
}