pub type Coach {
  Coach(name: String, former_player: Bool)
}

pub type Stats {
  Stats(wins: Int, losses: Int)
}

pub type Team {
  Team(name: String, coach: Coach, stats: Stats)
}

pub fn create_coach(name: String, former_player: Bool) -> Coach {
  Coach(name: name, former_player: former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  Stats(wins: wins, losses: losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  Team(name: name, coach: coach, stats: stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  Team(name: team.name, coach: coach, stats: team.stats)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  home_team == away_team
}

pub fn root_for_team(team: Team) -> Bool {
  let is_good_coach = case team.coach.name {
    "Gregg Popovich" -> True
    _ -> False
  }

  let is_good_former_player = case team.coach.former_player {
    True -> True
    False -> False
  }

  let is_good_team = case team.name {
    "Chicago Bulls" -> True
    _ -> False
  }

  let has_won_60 = case team.stats.wins {
    wins if wins >= 60 -> True
    _ -> False
  }

  let has_more_wins = case team.stats.wins, team.stats.losses {
    wins, losses if wins < losses -> True
    _, _ -> False
  }

  is_good_coach
  || is_good_former_player
  || is_good_team
  || has_won_60
  || has_more_wins
}

pub fn main() {
  let spurs_coach = create_coach("Gregg Popovich", False)
  let spurs_stats = create_stats(56, 26)
  let spurs_team = create_team("San Antonio Spurs", spurs_coach, spurs_stats)

  echo root_for_team(spurs_team)
}
