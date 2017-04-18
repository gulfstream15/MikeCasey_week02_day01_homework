class Team

  # Note here that attr_reader means we are creating
  # in built methods to return these e.g points() is
  # is created so can use in code
  attr_reader :team_name, :players, :points
  attr_accessor :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
    @points = 0
  end

  # def get_team_name
  #   return @team_name
  # end

  # def get_players
  #   return @players
  # end

  # def get_coach
  #   return @coach_name
  # end

  # def set_coach(new_coach_name)
  #   @coach_name = new_coach_name    
  # end

  def add_player(new_player)
    players << new_player
  end

  def check_player(player)
    return @players.include?(player)
  end 

  def play_game(result)
    if result.downcase == "win"
      @points += 3
    end
  end
    
end