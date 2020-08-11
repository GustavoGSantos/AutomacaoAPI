describe 'Fazer uma requisição' do
    it 'get' do
        #Se não usar o módulo a chamada seria
        #@primeira_opcao = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
        #puts @primeira_opcao

        @melhor_opcao = Contato.get('/contacts')
        puts @melhor_opcao
    end
  
end