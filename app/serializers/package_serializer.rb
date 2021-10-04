class PackageSerializer < BaseSerializer
  attributes :id, :estimated_delivery_date, :tracking_number, :delivery_status
end
