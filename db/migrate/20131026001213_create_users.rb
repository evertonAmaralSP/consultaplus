class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :name, :null => false, :limit => 100
      t.string :email, :null => false
      t.string :password, :null => false
      t.string :role
      t.timestamps
    end

    add_index :users, :email, :unique => true
  end
end
