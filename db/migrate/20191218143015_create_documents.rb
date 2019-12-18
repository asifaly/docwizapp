class CreateDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :documents do |t|
      t.string :description
      t.string :currency
      t.decimal :amount
      t.date :documents_date
      t.date :shipment_date
      t.string :shipment_from
      t.string :port_of_loading
      t.string :port_of_discharge
      t.string :final_destination
      t.string :incoterm
      t.string :goods
      t.string :remarks
      t.string :tenor
      t.string :consignee_name
      t.string :consignee_address1
      t.string :consignee_address2
      t.string :consignee_address3
      t.string :shipper_name
      t.string :shipper_address1
      t.string :shipper_address2
      t.string :shipper_address3
      t.references :documentary_credit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
