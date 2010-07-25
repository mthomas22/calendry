class CreateListings < ActiveRecord::Migration
  def self.up
    create_table :listings do |t|
      t.integer   :user_id
      t.datetime  :start_time
      t.datetime  :end_time
      t.string    :description
      t.string    :title
      t.text      :body
      t.date      :date
      t.string    :list
      t.date      :start_date
      t.string    :type
      t.boolean   :remember_this
      
      t.timestamps
    end
  end

  def self.down
    drop_table :listings
  end
end
