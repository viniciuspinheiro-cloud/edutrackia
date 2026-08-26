// Query all STATUS_ITEM records
query status_item verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query STATUS_ITEM {
      return = {type: "list"}
    } as $status_item
  }

  response = $status_item
}