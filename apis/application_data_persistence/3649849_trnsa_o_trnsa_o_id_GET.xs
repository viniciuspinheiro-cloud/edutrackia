// Get trnsação record
query "trnsa_o/{trnsa_o_id}" verb=GET {
  api_group = "application Data Persistence"

  input {
    int trnsa_o_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.trnsa_o_id
    } as $trnsa_o
  
    precondition ($trnsa_o != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $trnsa_o
}