module Criar
    include HTTParty
    #url base
    base_uri 'https://api-de-tarefas.herokuapp.com'
    #Opcoes do service
    format :json
end