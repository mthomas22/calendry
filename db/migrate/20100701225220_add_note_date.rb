class AddNoteDate < ActiveRecord::Migration
  def self.up
    add_column :notes, :date, :date
    add_column :appointments, :date, :date
    add_column :to_dos, :date, :date
  end

  def self.down
    remove_column :notes, :date
    remove_column :appointments, :date
    remove_column :to_dos, :date
  end
end
