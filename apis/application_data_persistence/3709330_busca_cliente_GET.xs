// Dado um AuthToken, devolve dados do cliente
query buscaCliente verb=GET {
  api_group = "application Data Persistence"

  input {
    // Token de autenticação 
    text authtoken? filters=trim
  }

  stack {
    api.request {
      url = "https://x8ki-letl-twmt.n7.xano.io/api:zq52NWVb/auth/me"
      method = "GET"
      params = $input.authtoken
      headers = '[]["Authorization: Bearer " ~ $input.authtoken,"Content-Type: application/json"]'
    } as $api2
  }

  response = $api1
}