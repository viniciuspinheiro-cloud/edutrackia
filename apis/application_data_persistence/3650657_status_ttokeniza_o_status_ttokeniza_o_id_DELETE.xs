// Delete STATUS_TTOKENIZAÇÃO record.
query "status_ttokeniza_o/{status_ttokeniza_o_id}" verb=DELETE {
  api_group = "application Data Persistence"

  input {
    int status_ttokeniza_o_id? filters=min:1
  }

  stack {
    db.del "" {
      field_name = "id"
      field_value = $input.status_ttokeniza_o_id
    }
  }

  response = null
}