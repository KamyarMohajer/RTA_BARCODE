class Barcode < ApplicationRecord
    belongs_to :product
    has_many :scan, dependent: :destroy
end
