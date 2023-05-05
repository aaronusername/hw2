class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string "movie_title"
      t.integer "movie_year"
      t.string "movie_rating"
      t.integer "studio_id"
      t.timestamps
    end
  end
end
