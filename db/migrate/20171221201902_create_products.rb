class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :title
      t.string :genre
      t.string :slug
      t.integer :original_price_in_cents
      t.integer :sale_price_in_cents
      t.date :release_date
      t.boolean :active
      t.string :url

      t.timestamps
    end

  end
end
