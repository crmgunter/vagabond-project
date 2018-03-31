class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true
      t.string :image_url

      t.timestamps
    end
  end
end
