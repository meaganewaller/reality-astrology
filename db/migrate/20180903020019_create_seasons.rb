class CreateSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :seasons do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.integer :season_number
      t.belongs_to :television_show, foreign_key: true

      t.timestamps
    end
  end
end
