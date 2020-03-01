class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :member_title
      t.string :fav_movie
      t.string :profile_photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
