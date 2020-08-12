describe 'Fazer uma requisição' do
    it 'post' do
        @body = {
            "name": "bruno teste2",
            "last_name": "batista teste2",
            "email": "brunoteste2@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json
        
        #Forma simples do HTTParty
        #@header = {
        #    Accept: 'application/vnd.tasksmanager.v2',
        #    'Content-Type': 'application/json'
        #}

        #@request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body ,headers: @header)
        #puts @request

        #Forma usando módulo
        @request = Contato.post('/contacts', body: @body)
        puts @request

    end
end