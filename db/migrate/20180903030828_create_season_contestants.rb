class CreateSeasonContestants < ActiveRecord::Migration[5.2]
  def change
    create_table :season_contestants do |t|
      t.belongs_to :contestant, foreign_key: true
      t.belongs_to :season, foreign_key: true
      t.integer :place

      t.timestamps
    end
  end
end
