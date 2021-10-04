class CreatePackages < ActiveRecord::Migration[6.1]
  def change
    create_table :packages, id: :uuid do |t|
      t.date :estimated_delivery_date
      t.string :tracking_number, null: false
      t.string :delivery_status, default: 'new'

      t.timestamps
    end
    add_index :packages, :tracking_number, :unique => true
  end
end
