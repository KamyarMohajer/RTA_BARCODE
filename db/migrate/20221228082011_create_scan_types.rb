class CreateScanTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :scan_types do |t|
      t.string :stamp

      t.timestamps
    end
  end
end
