class AddFieldsToUse < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :open_from, :string
    add_column :users, :open_until, :string
    add_column :users, :website, :string
    add_column :users, :phone_number, :string
    add_column :users, :icon, :string
  end
end
