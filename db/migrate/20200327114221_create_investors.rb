class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.integer :phone
      t.string :street_address
      t.string :state_address
      t.integer :zip_code

      t.timestamps
    end
  end
end
