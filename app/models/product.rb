class Product < ApplicationRecord
    has_one :barcode, dependent: :destroy
end
