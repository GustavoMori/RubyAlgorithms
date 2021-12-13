class WrongNumberOfPlayersError < StandardError;end

class NoSuchStrategyError < StandardError;end

POSSIBILITIES_OF_STRATEGIES = ['R', 'S', 'P']

def rps_game_winner(game)

  game = game.map { |plays| plays.map { |players_and_strategies| players_and_strategies.upcase } }

  raise WrongNumberOfPlayersError unless game.length == 2

  raise NoSuchStrategyError unless include_on_possibilities_strategies?(game)

  first_is_winner = (game.first[1] == 'R' && game[1][1] == 'S') ||
                    (game.first[1] == 'S' && game[1][1] == 'P') ||
                    (game.first[1] == 'P' && game[1][1] == 'R')

  draw = game.first[1] == game[1][1]
  if (first_is_winner)
    game.first
  elsif (draw)
    game.first
  else
    game[1]
  end
end

private

def include_on_possibilities_strategies?(game)
  POSSIBILITIES_OF_STRATEGIES.include?(game.first[1]) &&
  POSSIBILITIES_OF_STRATEGIES.include?(game[1][1])
end
