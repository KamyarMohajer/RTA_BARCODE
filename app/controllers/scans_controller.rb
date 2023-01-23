class ScansController < ApplicationController
  before_action :set_scan, only: %i[ show update destroy ]
  before_action :set_product_barcode, only: %i[ create status ]

  def create()
    Scan::CreateScanJob.perform_async(params[:type], @barcode_id)
    render status: :created
    # type = ScanType.statuses[params[:type]]
    # @scan = Scan.new(barcode_id: @barcode_id, scan_type_id: type)
    # if @scan.save
    #   render json: @scan, status: :created, location: @scan
    # else
    #   render json: @scan.errors, status: :unprocessable_entity
    # end
  end

  def destroy
    @scan.destroy
  end

  def status
    @scans = Scan.where(barcode_id: @barcode_id)
    stamp = ScanType.statuses.key(@scans.last.scan_type_id)
    render json: { product: @product, stamp: stamp, }
  end

  private
    def set_scan
      @scan = Scan.find(params[:id])
    end

    def set_product_barcode
      @product = Product.find(params[:id])
      @barcode_id = @product.barcode.id
    end
end
