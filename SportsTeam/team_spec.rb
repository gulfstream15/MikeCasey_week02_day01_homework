require('minitest/autorun')
require('minitest/rg')  # prints the red and green output
require_relative('team')

class TestTeam < MiniTest::Test

  def setup
      # This sets up the @student object used throughout
      @team = Team.new("Villa", ["John", "Mike"], "Bob") 
  end

  def test_get_team_name
    # @team.get_team_name
    assert_equal("Villa", @team.team_name)
  end

  def test_get_players
    # @team.get_players
    # assert_equal(["John", "Mike"], @team.players)
  end

  def test_get_coach
    # @team.get_coach
    assert_equal("Bob", @team.coach_name)
  end

  def test_set_coach
    @team.coach_name = "Bill"
    assert_equal("Bill", @team.coach_name)
  end

  def test_add_player
    @team.add_player("Joe")
    assert_equal(["Joe", "John", "Mike"], @team.players)
  end 

  def test_check_player
    @team.check_player("John")
    assert_equal(true, @team.player)
  end

end