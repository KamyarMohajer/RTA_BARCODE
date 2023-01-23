class CreateScanService
    def initialize(type:, barcode_id:)
        @type = type
        @barcode_id = barcode_id
    end
    def create_scan
        type = ScanType.statuses[@type]
        @scan = Scan.new(barcode_id: @barcode_id, scan_type_id: type)
        @scan.save
    end
end