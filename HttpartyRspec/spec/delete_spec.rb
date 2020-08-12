describe 'Fazer requisição' do
    it 'delete' do
        Contato.delete('/contacts/1755')
    end
end