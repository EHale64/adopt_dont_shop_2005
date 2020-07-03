class RemoveAddZipToShelters < ActiveRecord::Migration[5.1]
  def change
    remove_column :shelters, :add_zip_to_shelters, :integer
  end
end
