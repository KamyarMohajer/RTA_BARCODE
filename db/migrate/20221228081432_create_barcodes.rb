class CreateBarcodes < ActiveRecord::Migration[7.0]
  def change
    create_table :barcodes do |t|
      t.string :no

      t.timestamps
    end
  end
end
