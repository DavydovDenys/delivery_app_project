class AddDefaultValueToEnabledFromDeliveryManagers < ActiveRecord::Migration[6.1]
  def change
    change_column :delivery_managers, :enabled, :boolean, default: true
  end
end
