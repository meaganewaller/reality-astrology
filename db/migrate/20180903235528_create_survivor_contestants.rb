class CreateSurvivorContestants < ActiveRecord::Migration[5.2]
  def change
    create_table :survivor_contestants do |t|
      t.belongs_to :contestant, foreign_key: true
      t.belongs_to :season, foreign_key: true
      t.integer :place
      t.boolean :jury
      t.integer :votes_against
      t.integer :day_out
      t.string :tribe
      t.boolean :merged

      t.timestamps
    end
  end
end
