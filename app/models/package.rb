class Package < ApplicationRecord
  enum delivery_status: { new: 'new', processing: 'processing', delivered: 'delivered', cancelled: 'cancelled' }, _prefix: :status

  validates_uniqueness_of :tracking_number
end
