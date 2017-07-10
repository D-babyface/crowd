json.extract! mlb_player, :id, :team, :name, :number, :average_or_era, :years_played, :postition, :created_at, :updated_at
json.url mlb_player_url(mlb_player, format: :json)
