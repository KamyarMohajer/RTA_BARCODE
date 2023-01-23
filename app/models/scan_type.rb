class ScanType < ApplicationRecord
    has_many :scan, dependent: :destroy
    enum :statuses, { Allocate: 1, Pickup: 2, Largement: 3 }
end
