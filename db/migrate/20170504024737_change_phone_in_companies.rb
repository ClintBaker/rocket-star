class ChangePhoneInCompanies < ActiveRecord::Migration[5.0]
  def change
    change_table :companies do |t|
      t.remove :phone 
      t.string :phone
    end
  end
end
