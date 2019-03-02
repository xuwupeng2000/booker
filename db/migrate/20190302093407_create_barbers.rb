class CreateBarbers < ActiveRecord::Migration[5.2]
  def change
    create_table :barbers do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
