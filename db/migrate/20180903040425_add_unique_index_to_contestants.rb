class AddUniqueIndexToContestants < ActiveRecord::Migration[5.2]
  def change
    add_index :contestants, [:name, :birthday], unique: true
  end
end
