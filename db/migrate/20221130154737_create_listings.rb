class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :location
      t.string :address
      t.string :home_description
      t.string :home_type
      t.float :bed
      t.float :bath
      t.float :price
      t.integer :sq_feet
      t.string :images

      t.timestamps
    end
  end
end
