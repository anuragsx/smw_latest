class CreateWishlists < ActiveRecord::Migration
  def self.up
    create_table :wishlists do |t|
      t.string :listingtype
      t.string :year
      t.string :make
      t.string :model
      t.string :category
      t.string :subcategory
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :wishlists
  end
end
