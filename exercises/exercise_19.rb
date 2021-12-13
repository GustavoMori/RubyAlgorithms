class WrongNumberOfPlayersError < StandardError;end

class NoSuchStrategyError < StandardError;end

POSSIBILITIES_OF_STRATEGIES = ['R', 'S', 'P']

def rps_game_winner(game)

  upcase_game = game.map { |plays| plays.map { |players_and_strategies| players_and_strategies.upcase } }

  raise WrongNumberOfPlayersError unless upcase_game.length == 2

  raise NoSuchStrategyError unless
    POSSIBILITIES_OF_STRATEGIES.include?(upcase_game.first[1]) &&
    POSSIBILITIES_OF_STRATEGIES.include?(upcase_game[1][1])

  first_is_winner = (upcase_game.first[1] == 'R' && upcase_game[1][1] == 'S') ||
                    (upcase_game.first[1] == 'S' && upcase_game[1][1] == 'P') ||
                    (upcase_game.first[1] == 'P' && upcase_game[1][1] == 'R')

  draw = upcase_game.first[1] == upcase_game[1][1]
  if (first_is_winner)
    upcase_game.first
  elsif (draw)
    upcase_game.first
  else
    upcase_game[1]
  end
end
