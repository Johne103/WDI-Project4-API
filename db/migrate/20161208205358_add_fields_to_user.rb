class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :store_name, :string
    add_column :users, :image, :string
    add_column :users, :address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :is_store, :boolean
  end
end
