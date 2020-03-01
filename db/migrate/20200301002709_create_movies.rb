class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :release_year
      t.string :genre
      t.date :date_attended
      t.string :theater
      t.string :poster_image

      t.timestamps
    end
  end
end
