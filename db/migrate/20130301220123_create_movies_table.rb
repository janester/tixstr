class CreateMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :runtime
      t.string :rating
      t.timestamps
    end
  end

end
