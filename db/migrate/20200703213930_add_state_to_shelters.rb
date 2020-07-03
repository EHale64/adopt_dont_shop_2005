class AddStateToShelters < ActiveRecord::Migration[5.1]
  def change
    add_column :shelters, :state, :string
    add_column :shelters, :add_zip_to_shelters, :string
    add_column :shelters, :zip, :integer
  end
end
