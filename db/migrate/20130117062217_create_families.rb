class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :dog
      t.string :cat
      t.string :email
      t.integer :phone
      t.string :city

      t.timestamps
    end
  end
end
