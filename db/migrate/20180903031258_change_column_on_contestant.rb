class ChangeColumnOnContestant < ActiveRecord::Migration[5.2]
  def change
    change_column :contestants, :birthday, :string
  end
end
