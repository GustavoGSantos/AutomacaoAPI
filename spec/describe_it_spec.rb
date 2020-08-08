#sempre usar _spec.rb do arquivo

describe 'soma' do
    puts 'Rodei minha descrição'

    it 'dois numero' do
        total = 2 + 2
        puts total
        expect(total).to eq 4
    end

    it 'dois numero' do
        total = -2 + (-2)
        puts total
        expect(total).to eq -4
    end
end 