module Contato
    include HTTParty
    #url base
    base_uri CONFIG['url_padrao']
    #Opcoes do service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json' 
end