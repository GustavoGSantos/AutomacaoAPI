describe 'somar' do
    context 'dois números' do
        #Let cria uma varável global dentro do contexto que pode ser acessada por qualquer it
        let(:resultado) {4 + 4}
        #Pode chamar um let dentro de outro let
        let(:resultadoDois) {resultado + 4}

        it 'does something' do
            expect(resultado).to eq 8
            expect(resultadoDois).to eq 12
        end
    end 
end