// Delete trnsação record.
query "trnsa_o/{trnsa_o_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int trnsa_o_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.trnsa_o_id
    }
  }

  response = null
}