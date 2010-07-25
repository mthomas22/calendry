class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :appointments, :start_time
    remove_column :appointments, :end_time
    remove_column :appointments, :description
    remove_column :appointments, :date
    remove_column :appointments, :title
    remove_column :appointments, :user_id
    
    remove_column :notes, :title
    remove_column :notes, :body
    remove_column :notes, :user_id
    remove_column :notes, :date
    
    remove_column :to_dos, :user_id
    remove_column :to_dos, :list
    remove_column :to_dos, :start_date
    remove_column :to_dos, :date
    remove_column :to_dos, :title
  end

  def self.down
    add_column :appointments, :start_time, :datetime
    add_column :appointments, :end_time, :datetime
    add_column :appointments, :description, :string
    add_column :appointments, :date, :date
    add_column :appointments, :title, :string
    add_column :appointments, :user_id, :integer
    
    add_column :notes, :title, :string
    add_column :notes, :body, :text
    add_column :notes, :user_id, :integer
    add_column :notes, :date, :date
    
    add_column :to_dos, :user_id, :integer
    add_column :to_dos, :list, :string
    add_column :to_dos, :start_date, :date
    add_column :to_dos, :date, :date
    add_column :to_dos, :title, :string
  end
end
