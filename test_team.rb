require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Rangers", 5, ["Jerry", "Bill", "Kathy", "Jean", "Polly"])
  end

  def test_to_hash_creates_hash
    assert_equal({team_name: "Rangers", level: 5, points: 0}, @team.to_hash)
  end

  def test_to_hash_does_not_create_hash
    refute_equal({team_name: "Koolaid", level: 3, points: 5}, @team.to_hash)
  end

end
