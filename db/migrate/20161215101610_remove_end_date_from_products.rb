class RemoveEndDateFromProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :end_time
  end
end
