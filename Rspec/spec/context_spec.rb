describe 'Soma' do
    context 'Somar dois números' do
        it 'negativos' do
            total = -3 + (-3)
            expect(total).to eq -6
        end
        
        it 'positivos' do
            total = 3 + 3
            expect(total).to eq 6
        end
    end
end