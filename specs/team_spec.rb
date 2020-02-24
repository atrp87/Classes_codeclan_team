require('minitest/autorun')
require('minitest/reporters')
require_relative('../team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class Test_Team < MiniTest::Test


  def test_team_name()
    test_name = Team.new("The Animals", ["john", "bob"], "alex", 0)
    assert_equal("The Animals", test_name.team_name)
  end

  def test_players()
    test_players = Team.new("The Animals", ["john", "bob"], "alex", 0)
    assert_equal(["john", "bob"], test_players.players)
  end

  def test_couch()
    test_couch = Team.new("The Animals", ["john", "bob"], "alex", 0)
    assert_equal("alex", test_couch.couch)
  end

  def test_new_couch()
    test_couch = Team.new("The Animals", ["john", "bob"], "alex", 0)
    test_couch.couch = "jim"
    assert_equal("jim", test_couch.couch)
  end

  def test_add_players()
      test_players = Team.new("The Animals", ["john", "bob"], "alex", 0)
      test_players.add_players("billy",["john", "bob"])
      assert_equal(["john", "bob", "billy"], test_players.players)
  end

  def test_points()
    test_points = Team.new("The Animals", ["john", "bob"], "alex", 0)
    assert_equal(0, test_points.points)
  end

  def test_win()
    test_team = Team.new("The Animals", ["john", "bob"], "alex", 0)
    test_team.win_lose("win")
    assert_equal(3, test_team.points)
  end


end
