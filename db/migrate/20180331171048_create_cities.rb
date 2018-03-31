class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :image_url
      t.string :post
      t.string :description
      t.integer :raitings

      t.timestamps
    end
  end
end
