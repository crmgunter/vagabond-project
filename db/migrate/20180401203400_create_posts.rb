class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :rating
      t.references :city, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
