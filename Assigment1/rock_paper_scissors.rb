class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def valid_strategy?(strategy)
  %w(r s p).include? strategy.downcase
end

def winner?(move1,move2)  
  (move1 == "R" and move2 == "S") or
  (move1 == "S" and move2 == "P") or
  (move1 == "P" and move2 == "R") or
  move1 == move2
end

def rps_game_winner(game)
  move1 = game.first.last
  move2 = game.last.last

  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless valid_strategy?(move1) and valid_strategy?(move2)  
    
  return game.first if winner?(move1,move2)
  game.last    
end

#To.do tournament

