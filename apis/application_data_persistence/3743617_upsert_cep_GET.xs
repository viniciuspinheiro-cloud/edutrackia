query UPSERT_CEP verb=GET {
  api_group = "application Data Persistence"

  input {
    text cidade? filters=trim
    text estado? filters=trim
    text cep? filters=trim
  }

  stack {
    db.query CEP {
      where = $db.CEP.cep == $input.cep
      return = {type: "list"}
    } as $CEP1
  
    conditional {
      if ("$var .CEP1[0].cep" == $input.cep) {
      }
    
      else {
        db.add CEP {
          enforce_hidden_fields = false
          data = {
            id        : null
            created_at: "now"
            cep       : $input.cep
            uf        : $input.cidade
            cidade    : $input.estado
          }
        } as $CEP2
      }
    }
  
    db.patch CEP {
      field_name = "id"
      field_value = "$var. CEP[0].id"
      data = `{ 'cidade':$input.cidade, 'estado':$input.estado }`
        |set:'["cidade\'"]':`$input.cidade`
        |set:'["estado\'"]':`$input.estado`
    } as $CEP2
  }

  response = $CEP2
}