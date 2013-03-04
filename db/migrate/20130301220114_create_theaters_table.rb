class CreateTheatersTable < ActiveRecord::Migration
  def change
    create_table :theaters do |t|
      t.string :name
      t.string :location
      t.integer :movie_id
      t.timestamps
    end
  end
end
