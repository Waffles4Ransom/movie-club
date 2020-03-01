class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :member_title
      t.string :fav_movie
      t.string :profile_photo
      t.boolean :status
      t.boolean :admin

      t.timestamps
    end
  end
end
