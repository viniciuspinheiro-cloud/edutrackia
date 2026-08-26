// Query all ITEM records
query item verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query ITEM {
      return = {type: "list"}
    } as $item
  }

  response = $item
}