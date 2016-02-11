class InitialMigration < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.integer :role, default: 0

      t.timestamps
    end

    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
