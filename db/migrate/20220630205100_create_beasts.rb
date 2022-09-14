class CreateBeasts < ActiveRecord::Migration[5.2]
  def change
    create_table :beasts do |t|
      t.column :type, :string
      t.column :breed, :string
      t.column :name, :string
      t.column :age, :integer
      t.column :desc, :string
      t.column :available, :boolean, default: true 
    end
  end
end
