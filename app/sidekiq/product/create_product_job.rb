class Product::CreateProductJob
  include Sidekiq::Job
  
  queue_as :default
  sidekiq_options retry: 5

  def perform(name, description)
    product = CreateProductService.new(name, description)
    product.create_product
  end
end
