class CreateTicketsTable < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer :movie_id
      t.integer :user_id
      t.boolean :is_bought, :default => false
      t.timestamps
    end
  end
end
