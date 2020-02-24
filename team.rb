class Team

  attr_reader :team_name, :players, :couch, :points
  attr_writer :team_name, :players, :couch, :points

  def initialize(team_name, players, couch, points)
    @team_name = team_name
    @players = players
    @couch = couch
    @points = points
  end

  def add_players(new_players, existing_players)
   @players = existing_players.push(new_players)
  end

  def win_lose(result)
    if result == "win"
      @points += 3
    else
      @points += 0
  end
end




end
