class CreateDocumentaryCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :documentary_credits do |t|
      t.string :lc_number
      t.date :issue_date
      t.date :expiry_date
      t.string :currency
      t.decimal :lc_amount
      t.string :applicant_name
      t.string :applicant_address1
      t.string :applicant_address2
      t.string :applicant_address3
      t.string :beneficiary_name
      t.string :beneficiary_address1
      t.string :beneficiary_address2
      t.string :beneficiary_address3
      t.string :issuing_bank_name
      t.string :issuing_bank_address1
      t.string :issuing_bank_address2
      t.string :issuing_bank_address3
      t.string :tenor
      t.string :shipment_from
      t.string :port_of_loading
      t.string :port_of_discharge
      t.string :final_destination
      t.date :latest_shipment_date
      t.string :partial_shipment
      t.string :transhipment
      t.text :goods_description
      t.text :documents_required
      t.text :additional_conditions
      t.text :drawee
      t.text :available_with
      t.string :available_by
      t.text :remarks

      t.timestamps
    end
  end
end
