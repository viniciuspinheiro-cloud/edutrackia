// Add trnsação record
query trnsa_o verb=POST {
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
    } as $trnsa_o
  }

  response = $trnsa_o
}