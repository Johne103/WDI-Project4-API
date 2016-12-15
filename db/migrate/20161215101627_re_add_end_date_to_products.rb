class ReAddEndDateToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :end_time, :date
  end
end
