class AddStrengthToBeasts < ActiveRecord::Migration[5.2]
  def change
    add_column(:beasts, :strength, :integer)
  end
end
