describe 'usando around' do
    around(:each) do |testes|
        #Equivalente ao before
        puts 'executando comandos antes dos testes'
        
        testes.run

        #Equivalente ao after
        puts 'executando comandos depois dos testes'
    end

    it 'teste padrao' do
        total = 5 + 5
        expect(total).to eq 10
    end
end