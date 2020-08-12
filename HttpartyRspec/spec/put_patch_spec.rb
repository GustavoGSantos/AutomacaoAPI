describe 'Fazer requisição para alterar dados' do
    it 'put' do
        @body_put = {
            "id": 1755,
            "name": "bruno teste3",
            "last_name": "batista teste3",
            "email": "brunoteste3@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "address": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte"
        }.to_json
        @requisicao_put = Contato.put('/contacts/1755', body: @body_put)
        puts @requisicao_put
    end
    it 'patch' do
        @body_patch = {
            "id": 1756,
            "name": "bruno teste4",
            "last_name": "batista teste4",
            "email": "brunoteste4@gmail.com",
        }.to_json
        @requisicao_patch = Contato.patch('/contacts/1756', body: @body_patch)
        puts @requisicao_patch
    end
end