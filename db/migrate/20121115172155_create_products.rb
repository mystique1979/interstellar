class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :location
      t.decimal :price, precision: 8, scale: 2
      t.string :image_url
      t.integer :user

      t.timestamps
    end
  end
end
