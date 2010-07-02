class AddUser < ActiveRecord::Migration
  def self.up
    add_column :notes, :user_id, :integer
    add_column :appointments, :user_id, :integer
  end

  def self.down
    remove_column :notes, :user_id
    remove_column :appointments, :user_id
  end
end
