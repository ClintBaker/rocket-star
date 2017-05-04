class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :state
      t.integer :zipcode
      t.string :country
      t.string :website
      t.integer :phone
      t.timestamps
    end
  end
end
