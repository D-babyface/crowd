class CreateMlbPlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :mlb_players do |t|
      t.string :team
      t.string :name
      t.string :number
      t.string :average_or_era
      t.string :years_played
      t.string :postition

      t.timestamps
    end
  end
end
