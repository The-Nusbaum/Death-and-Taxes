class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.references :county, foreign_key: true
      t.references :product, foreign_key: true
      t.float :quantity
      t.float :total

      t.timestamps
    end
  end
end
