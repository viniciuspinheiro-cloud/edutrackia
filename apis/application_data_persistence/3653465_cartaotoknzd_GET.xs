// Query all CARTAOTOKNZD records
query cartaotoknzd verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query CARTAOTOKNZD {
      return = {type: "list"}
    } as $cartaotoknzd
  }

  response = $cartaotoknzd
}