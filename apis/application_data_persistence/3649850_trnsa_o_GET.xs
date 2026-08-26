// Query all trnsação records
query trnsa_o verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query "" {
      return = {type: "list"}
    } as $trnsa_o
  }

  response = $trnsa_o
}