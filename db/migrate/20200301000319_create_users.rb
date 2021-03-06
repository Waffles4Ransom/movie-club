class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.boolean :status, default: true
      t.boolean :admin, default: false

      t.timestamps
    end
  end
end
