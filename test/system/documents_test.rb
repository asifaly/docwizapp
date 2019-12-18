require "application_system_test_case"

class DocumentsTest < ApplicationSystemTestCase
  setup do
    @document = documents(:one)
  end

  test "visiting the index" do
    visit documents_url
    assert_selector "h1", text: "Documents"
  end

  test "creating a Document" do
    visit documents_url
    click_on "New Document"

    fill_in "Amount", with: @document.amount
    fill_in "Consignee address1", with: @document.consignee_address1
    fill_in "Consignee address2", with: @document.consignee_address2
    fill_in "Consignee address3", with: @document.consignee_address3
    fill_in "Consignee name", with: @document.consignee_name
    fill_in "Currency", with: @document.currency
    fill_in "Description", with: @document.description
    fill_in "Documentary credit", with: @document.documentary_credit_id
    fill_in "Documents date", with: @document.documents_date
    fill_in "Final destination", with: @document.final_destination
    fill_in "Goods", with: @document.goods
    fill_in "Incoterm", with: @document.incoterm
    fill_in "Port of discharge", with: @document.port_of_discharge
    fill_in "Port of loading", with: @document.port_of_loading
    fill_in "Remarks", with: @document.remarks
    fill_in "Shipment date", with: @document.shipment_date
    fill_in "Shipment from", with: @document.shipment_from
    fill_in "Shipper address1", with: @document.shipper_address1
    fill_in "Shipper address2", with: @document.shipper_address2
    fill_in "Shipper address3", with: @document.shipper_address3
    fill_in "Shipper name", with: @document.shipper_name
    fill_in "Tenor", with: @document.tenor
    click_on "Create Document"

    assert_text "Document was successfully created"
    assert_selector "h1", text: "Documents"
  end

  test "updating a Document" do
    visit document_url(@document)
    click_on "Edit", match: :first

    fill_in "Amount", with: @document.amount
    fill_in "Consignee address1", with: @document.consignee_address1
    fill_in "Consignee address2", with: @document.consignee_address2
    fill_in "Consignee address3", with: @document.consignee_address3
    fill_in "Consignee name", with: @document.consignee_name
    fill_in "Currency", with: @document.currency
    fill_in "Description", with: @document.description
    fill_in "Documentary credit", with: @document.documentary_credit_id
    fill_in "Documents date", with: @document.documents_date
    fill_in "Final destination", with: @document.final_destination
    fill_in "Goods", with: @document.goods
    fill_in "Incoterm", with: @document.incoterm
    fill_in "Port of discharge", with: @document.port_of_discharge
    fill_in "Port of loading", with: @document.port_of_loading
    fill_in "Remarks", with: @document.remarks
    fill_in "Shipment date", with: @document.shipment_date
    fill_in "Shipment from", with: @document.shipment_from
    fill_in "Shipper address1", with: @document.shipper_address1
    fill_in "Shipper address2", with: @document.shipper_address2
    fill_in "Shipper address3", with: @document.shipper_address3
    fill_in "Shipper name", with: @document.shipper_name
    fill_in "Tenor", with: @document.tenor
    click_on "Update Document"

    assert_text "Document was successfully updated"
    assert_selector "h1", text: "Documents"
  end

  test "destroying a Document" do
    visit edit_document_url(@document)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Document was successfully destroyed"
  end
end
