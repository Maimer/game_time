def make_data()
  dataset = [
              {
                home_team: "Patriots",
                away_team: "Broncos",
                home_score: 7,
                away_score: 3
              },
              {
                home_team: "Broncos",
                away_team: "Colts",
                home_score: 3,
                away_score: 0
              },
              {
                home_team: "Patriots",
                away_team: "Colts",
                home_score: 11,
                away_score: 7
              },
              {
                home_team: "Steelers",
                away_team: "Patriots",
                home_score: 7,
                away_score: 21
              }
            ]
end

def team_data(data)
  records = {}

  data.each do |game|
    if !records.has_key?(game[:home_team])
      records[game[:home_team]] = [0, 0]
    end
    if !records.has_key?(game[:away_team])
      records[game[:away_team]] = [0, 0]
    end
    if game[:home_score] > game[:away_score]
      records[game[:home_team]][0] += 1
      records[game[:away_team]][1] += 1
    else
      records[game[:home_team]][1] += 1
      records[game[:away_team]][0] += 1
    end
  end
  records
end

puts team_data(make_data).inspect
