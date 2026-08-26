// Get STATUS_TTOKENIZAÇÃO record
query "status_ttokeniza_o/{status_ttokeniza_o_id}" verb=GET {
  api_group = "application Data Persistence"

  input {
    int status_ttokeniza_o_id? filters=min:1
  }

  stack {
    db.get "" {
      field_name = "id"
      field_value = $input.status_ttokeniza_o_id
    } as $status_ttokeniza_o
  
    precondition ($status_ttokeniza_o != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $status_ttokeniza_o
}