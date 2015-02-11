class CreateMonsters < ActiveRecord::Migration
  def change
    create_table :monsters do |t|
      t.integer :user_id
      t.string :name
      t.integer :type_id
      t.integer :type_id
      t.integer :stamina
      t.integer :offense
      t.integer :defense
      t.integer :speed
      t.integer :intelligence
      t.text :text

      t.timestamps
    end
  end
end
