class CreateProductService
    require 'securerandom'
    def initialize(name:, description:)
        @name = name
        @description = description
    end
    
    def create_product
        uuid = SecureRandom.uuid
        @product = Product.new(name: name, description: description)
        if @product.save
            #Create new barcode for Product
            barcode = @product.create_barcode(no: uuid)
        end
    end
end