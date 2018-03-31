class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image_url
      t.string :email
      t.string :password
      t.string :current_city
      t.datetime :date_joined
      t.string :about_section

      t.timestamps
    end
  end
end
