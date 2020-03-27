class CreateInvestors < ActiveRecord::Migration[5.2]
  def change
    create_table :investors do |t|
      t.references :user, foreign_key: true 
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.string :phone
      t.string :street_address
      t.string :state_address
      t.string :zip_code

      t.timestamps
    end
  end
end
