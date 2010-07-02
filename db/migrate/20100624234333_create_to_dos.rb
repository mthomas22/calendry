class CreateToDos < ActiveRecord::Migration
  def self.up
    create_table :to_dos do |t|
      t.integer :user_id
      t.string :list
      t.date :start_date

      t.timestamps
    end
  end

  def self.down
    drop_table :to_dos
  end
end
