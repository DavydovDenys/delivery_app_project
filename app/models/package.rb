class Package < ApplicationRecord
  enum delivery_status: { new: 'new', processing: 'processing', delivered: 'delivered', cancelled: 'cancelled' }, _prefix: :status
end
