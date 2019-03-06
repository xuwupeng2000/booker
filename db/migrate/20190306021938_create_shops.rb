class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :city
      t.string :address
      t.text :description
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end
