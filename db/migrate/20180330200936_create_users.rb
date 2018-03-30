class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo_url
      t.string :email
      t.string :password
      t.references :post, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
