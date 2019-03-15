class AddUserToShops < ActiveRecord::Migration[5.2]
  def change
    add_reference :shops, :user, index: true
  end
end
