// Dado um novo cep, ex:0404800, verificar se ele está presente na tabela CEP
query buscaCEP verb=GET {
  api_group = "application Data Persistence"

  input {
    // CEP a ser pesquisado
    text cep? filters=trim
  }

  stack {
    db.query CEP {
      where = $db.CEP.cep == $input.cep
      return = {type: "list"}
    } as $CEP1
  }

  response = $api1
}