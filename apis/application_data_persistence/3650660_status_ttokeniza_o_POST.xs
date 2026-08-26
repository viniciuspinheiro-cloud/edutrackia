// Add STATUS_TTOKENIZAÇÃO record
query status_ttokeniza_o verb=POST {
  api_group = "application Data Persistence"

  input {
    dblink {
      table = ""
    }
  }

  stack {
    db.add "" {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $status_ttokeniza_o
  }

  response = $status_ttokeniza_o
}