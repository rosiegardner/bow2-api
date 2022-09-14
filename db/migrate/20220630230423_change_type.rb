class ChangeType < ActiveRecord::Migration[5.2]
  def change
    rename_column :beasts, :type, :daemon
  end
end
