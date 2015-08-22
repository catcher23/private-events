class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      add_column :users, :name, :string
      add_index :users, :name
    end
  end
end
