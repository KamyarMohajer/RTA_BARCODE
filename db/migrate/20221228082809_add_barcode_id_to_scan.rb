class AddBarcodeIdToScan < ActiveRecord::Migration[7.0]
  def change
    add_column :scans, :barcode_id, :integer
  end
end
