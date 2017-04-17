class Team

  attr_accessor :team_name, :players, :coach_name, :player

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name = coach_name
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

  def add_player(player)
    player = "Joe"
    players.insert(0, player)
  end

  # # Find pet by name
  # def find_pet_by_name(pet_shop, name)
  #   result = nil

  #   for pet in pet_shop[:pets]
  #     if pet[:name] == name
  #       result = name
  #     end 
  #   end

  #   return result

  # end

  def check_player(player)
    result = false
    
    for team_member in players
      result = true if player == team_member
    end   

    return result

  end 

end