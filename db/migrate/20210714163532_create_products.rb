class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.references :site, foreign_key: true
      t.string :identifier
      t.float :price
      t.float :amzprice
      t.float :ebayprice
      t.boolean :available
      t.string :url

      t.timestamps
    end
  end
end
