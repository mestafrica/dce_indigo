class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :company
      t.string :product_table

      t.timestamps
    end
  end
end
