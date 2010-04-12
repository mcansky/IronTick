class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.string :title
      t.string :status
      t.text :text
      t.integer :owner_id
      t.integer :project_id
      t.integer :customer_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :tickets
  end
end
