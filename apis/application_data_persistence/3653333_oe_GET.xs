// Query all OE records
query oe verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query OE {
      return = {type: "list"}
    } as $oe
  }

  response = $oe
}