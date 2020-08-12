describe 'Fazer uma requisição' do
    it 'get' do
        @response = Contato.get('/contacts/1790')
        #puts @response.code
        #expect(@response.code).to eq 200
        #puts @response.body
        
        @response = @response.parsed_response['data']['attributes']['name']
        puts @response
        expect(@response).to eq 'bruno teste2'
    end
end