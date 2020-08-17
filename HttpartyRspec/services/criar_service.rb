module Criar
    include HTTParty
    #url base
    base_uri CONFIG['url_padrao']
    #Opcoes do service
    format :json
end