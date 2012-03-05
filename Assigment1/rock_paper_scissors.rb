#Assigment1 rock_paper_scissors - Juan Felipe Arango - 

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
    
  if winner?(move1,move2)
    return game.first 
  end
  game.last    
end

def rps_tournament_winner(game)
  if game.first.first.is_a?(Array)
      group1  = rps_tournament_winner(game.first)
      group2 = rps_tournament_winner(game.last)
      #puts "group1 = #{group1}....."
      #puts "group2 = #{group2}....."      
      rps_tournament_winner([group1, group2])
  else
    #puts "Llegue #{game}"
    return rps_game_winner(game)
  end
end


game = [
              [
               [ ["Armando", "P"], ["Dave", "S"]],
               [ ["Richard", "R"], ["Michael", "S"]]
              ],
              [
               [ ["Allen", "S"], ["Omer", "P"]],
               [ ["David E.", "R"], ["Richard X", "P"]]
              ]
             ]
