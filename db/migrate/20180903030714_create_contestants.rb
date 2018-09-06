class CreateContestants < ActiveRecord::Migration[5.2]
  def change
    create_table :contestants do |t|
      t.string :name
      t.date :birthday
      t.string :sign

      t.timestamps
    end
  end
end
