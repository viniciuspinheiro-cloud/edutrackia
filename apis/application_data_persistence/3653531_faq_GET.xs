// Query all FAQ records
query faq verb=GET {
  api_group = "application Data Persistence"

  input {
  }

  stack {
    db.query FAQ {
      return = {type: "list"}
    } as $faq
  }

  response = $faq
}