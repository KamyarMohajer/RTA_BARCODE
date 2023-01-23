class AddScanTypeIdToScan < ActiveRecord::Migration[7.0]
  def change
    add_column :scans, :scan_type_id, :integer
  end
end
