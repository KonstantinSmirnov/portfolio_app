class InitialMigration < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :crypted_password
      t.string :salt
      t.integer :role, default: 0

      t.timestamps
    end

    create_table :contents do |t|
      t.string :logo_text
      t.string :logo_icon
      t.string :header
      t.string :subheader
      t.string :text
      t.string :index_description
      t.string :index_keywords
      t.string :projects_description
      t.string :projects_keywords

      t.timestamps
    end

    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :link
      t.has_attached_file :image

      t.timestamps
    end

    create_table :polls do |t|
      t.string :title

      t.timestamps
    end

    create_table :questions do |t|
      t.string :title
      t.integer :poll_id
      t.integer :votes, default: 0

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
