class Scan < ApplicationRecord
    belongs_to :scan_type
    belongs_to :barcode
end
