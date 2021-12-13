class WrongNumberOfPlayersError < StandardError;end

class NoSuchStrategyError < StandardError;end

def rps_game_winner(game)

  upcase_game = game.map { |plays| plays.map { |players_and_strategies| players_and_strategies.upcase } }
  possibilities_of_strategies = ['R', 'S', 'P']

  raise WrongNumberOfPlayersError unless upcase_game.length == 2

  raise NoSuchStrategyError unless
    possibilities_of_strategies.include?(upcase_game.first[1]) &&
    possibilities_of_strategies.include?(upcase_game[1][1])

  first_is_winner = (upcase_game.first[1] == 'R' && upcase_game[1][1] == 'S') ||
                    (upcase_game.first[1] == 'S' && upcase_game[1][1] == 'P') ||
                    (upcase_game.first[1] == 'P' && upcase_game[1][1] == 'R')

  second_is_winner = (upcase_game[1][1] == 'R' && upcase_game.first[1] == 'S') ||
                     (upcase_game[1][1] == 'S' && upcase_game.first[1] == 'P') ||
                     (upcase_game[1][1] == 'P' && upcase_game.first[1] == 'R')

  if (first_is_winner)
    upcase_game.first
  elsif (second_is_winner)
    upcase_game[1]
  end
end
