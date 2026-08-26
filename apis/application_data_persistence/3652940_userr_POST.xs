// Add userr record
query userr verb=POST {
  api_group = "application Data Persistence"

  input {
    dblink {
      table = "userr"
    }
  }

  stack {
    db.add userr {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $userr
  }

  response = $userr
}