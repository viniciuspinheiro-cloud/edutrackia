// Query all userr records
query userr verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query userr {
      return = {type: "list"}
    } as $userr
  }

  response = $userr
}