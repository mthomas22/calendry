class CreateAppointments < ActiveRecord::Migration
  def self.up
    create_table :appointments do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :appointments
  end
end
