class AddTitle < ActiveRecord::Migration
  def self.up
    add_column :to_dos, :title, :string
    add_column :appointments, :title, :string
  end

  def self.down
    remove_column :to_dos, :title
    remove_column :appointments, :title
  end
end
