require_relative '../exercises/exercise_19'

describe '#rps_game_winner' do

  context 'Raise Error when number of players != 2 or when strategy isnt R P S' do
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

  context 'first player is the winner' do
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

  context 'second player is the winner' do
    it 'first player choose Scissors and second player Rock' do
      player1_and_strategy = ['OKAZINHO', 'S']
      player2_and_strategy = ['IhaziNho', 'R']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IHAZINHO', 'R'])
    end

    it 'first player choose Paper and second player Scissors' do
      player1_and_strategy = ['OKAZINHO', 'P']
      player2_and_strategy = ['IhaziNho', 'S']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IHAZINHO', 'S'])
    end

    it 'first player choose Rock and second player Paper' do
      player1_and_strategy = ['OKAZINHO', 'R']
      player2_and_strategy = ['IhaziNho', 'P']
      game = [player1_and_strategy, player2_and_strategy]

      expect(rps_game_winner(game)).to eq(['IHAZINHO', 'P'])
    end
  end
end
