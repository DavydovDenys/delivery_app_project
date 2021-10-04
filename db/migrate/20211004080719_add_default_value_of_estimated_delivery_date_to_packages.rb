class AddDefaultValueOfEstimatedDeliveryDateToPackages < ActiveRecord::Migration[6.1]
  def change
    change_column :packages, :estimated_delivery_date, :string, default: ''
  end
end
