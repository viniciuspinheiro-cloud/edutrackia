// Query all STATUS_TTOKENIZAÇÃO records
query status_ttokeniza_o verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $status_ttokeniza_o
  }

  response = $status_ttokeniza_o
}