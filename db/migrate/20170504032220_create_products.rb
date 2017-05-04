class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.references :company, foreign_key: true
      t.integer :price, :limit => 9

      t.timestamps
    end
  end
end
