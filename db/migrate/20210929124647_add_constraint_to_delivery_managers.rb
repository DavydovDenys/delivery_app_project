class AddConstraintToDeliveryManagers < ActiveRecord::Migration[6.1]
  def up
    add_check_constraint :delivery_managers, 'enabled IN (true)', name: 'enabled_check'
  end

  def down
    remove_check_constraint :delivery_managers, name: 'enabled_check'
  end
end
