class AddWeaponToBeasts < ActiveRecord::Migration[5.2]
  def change
    add_column(:beasts, :weapon, :string)
  end
end
