require('minitest/autorun')
require('minitest/rg')  # prints the red and green output
require_relative('team')

# Note that because of these in the team.rb we refer to them
# below as #team_name(), players() and points() and coach_name()
# attr_reader :team_name, :players, :points
# attr_accessor :coach_name

class TestTeam < MiniTest::Test

  def setup
      # This can also be written as 
      players = ["John", "Mike"]
      @team = Team.new("Villa", players, "Bob") 
  end

  def test_get_team_name
    # @team.get_team_name
    assert_equal("Villa", @team.team_name())
  end

  def test_get_players
    # @team.get_players
    # assert_equal(["John", "Mike"], @team.players)
  end

  def test_get_coach
    # @team.get_coach
    assert_equal("Bob", @team.coach_name())
  end

  def test_set_coach
    @team.coach_name = "Bill"
    assert_equal("Bill", @team.coach_name())
  end

  def test_add_player
    @team.add_player("Joe")
    # Team was originally 2 players and checking it can go to 3
    assert_equal(3, @team.players.count())
  end 

  def test_check_player_in_team
    assert_equal(true, @team.check_player("John"))
  end

  def test_check_team_has_points
    assert_equal(0, @team.points())
  end  

  def test_if_team_wins
    @team.play_game("win")
    assert_equal(3, @team.points())
  end

  def test_if_team_wins
    @team.play_game("lost")
    assert_equal(0, @team.points())
  end

end