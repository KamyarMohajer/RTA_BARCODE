class Scan::CreateScanJob
  include Sidekiq::Job

  queue_as :default
  sidekiq_options retry: 5

  def perform(type, barcode_id)
    scan = CreateScanService.new(type, barcode_id)
    scan.create_scan
  end
end
