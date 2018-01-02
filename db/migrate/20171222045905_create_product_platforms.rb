class CreateProductPlatforms < ActiveRecord::Migration[5.1]
  def change
    create_table :product_platforms do |t|
      t.references :product, foreign_key: true
      t.references :platform, foreign_key: true

      t.timestamps
    end
  end
end
