class CreateTelevisionShows < ActiveRecord::Migration[5.2]
  def change
    create_table :television_shows do |t|
      t.string :name

      t.timestamps
    end
  end
end
