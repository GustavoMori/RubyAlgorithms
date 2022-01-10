require_relative '../exercises/exercise_19'

describe '#rps_game_winner' do

  context 'when number of players != 2 or strategy isnt R, P, S Raise Error' do
    it 'raise WrongNumberOfPlayersError' do
      player1_and_strategy = ['OKAZINHO', 'R']

      expect { rps_game_winner([player1_and_strategy]) }.to raise_error(WrongNumberOfPlayersError)
    end

    it 'raise NoSuchStrategyError' do
      player1_and_strategy = ['OKAZINHO', 'XABLAU']
      player2_and_strategy = ['IhaziNho', 'XABLINH']
      game = [player1_and_strategy, player2_and_strategy]

      expect { rps_game_winner(game) }.to raise_error(NoSuchStrategyError)
    end
  end

  context 'when first player is the winner' do
    it 'first player choose Rock and second player Scissors' do
      player1_and_strategy = ['OKAZINHO', 'R']
      player2_and_strategy = ['IhaziNho', 'S']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['OKAZINHO', 'R'])
    end

    it 'first player choose Scissors and second player Paper' do
      player1_and_strategy = ['OKAZINHO', 'S']
      player2_and_strategy = ['IhaziNho', 'P']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['OKAZINHO', 'S'])
    end

    it 'first player choose Paper and second player Rock' do
      player1_and_strategy = ['OKAZINHO', 'P']
      player2_and_strategy = ['IhaziNho', 'R']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['OKAZINHO', 'P'])
    end
  end

  context 'when second player is the winner' do
    it 'first player choose Scissors and second player Rock' do
      player1_and_strategy = ['OKAZINHO', 'S']
      player2_and_strategy = ['IhaziNho', 'R']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IhaziNho', 'R'])
    end

    it 'first player choose Paper and second player Scissors' do
      player1_and_strategy = ['OKAZINHO', 'P']
      player2_and_strategy = ['IhaziNho', 'S']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IhaziNho', 'S'])
    end

    it 'first player choose Rock and second player Paper' do
      player1_and_strategy = ['OKAZINHO', 'R']
      player2_and_strategy = ['IhaziNho', 'P']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IhaziNho', 'P'])
    end
  end

  context 'when first player and second player choose same strategy' do
    it 'return first player as winner' do
      player1_and_strategy = ['okazinho', 'R']
      player2_and_strategy = ['IhaziNho', 'R']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['okazinho', 'R'])
    end
  end
end
