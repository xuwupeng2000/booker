class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.monetize :price # Rails 4x and above
      t.references :barber, index: true

      t.timestamps
    end
  end
end
