require 'test_helper'

class DocumentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @document = documents(:one)
  end

  test "should get index" do
    get documents_url
    assert_response :success
  end

  test "should get new" do
    get new_document_url
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post documents_url, params: { document: { amount: @document.amount, consignee_address1: @document.consignee_address1, consignee_address2: @document.consignee_address2, consignee_address3: @document.consignee_address3, consignee_name: @document.consignee_name, currency: @document.currency, description: @document.description, documentary_credit_id: @document.documentary_credit_id, documents_date: @document.documents_date, final_destination: @document.final_destination, goods: @document.goods, incoterm: @document.incoterm, port_of_discharge: @document.port_of_discharge, port_of_loading: @document.port_of_loading, remarks: @document.remarks, shipment_date: @document.shipment_date, shipment_from: @document.shipment_from, shipper_address1: @document.shipper_address1, shipper_address2: @document.shipper_address2, shipper_address3: @document.shipper_address3, shipper_name: @document.shipper_name, tenor: @document.tenor } }
    end

    assert_redirected_to document_url(Document.last)
  end

  test "should show document" do
    get document_url(@document)
    assert_response :success
  end

  test "should get edit" do
    get edit_document_url(@document)
    assert_response :success
  end

  test "should update document" do
    patch document_url(@document), params: { document: { amount: @document.amount, consignee_address1: @document.consignee_address1, consignee_address2: @document.consignee_address2, consignee_address3: @document.consignee_address3, consignee_name: @document.consignee_name, currency: @document.currency, description: @document.description, documentary_credit_id: @document.documentary_credit_id, documents_date: @document.documents_date, final_destination: @document.final_destination, goods: @document.goods, incoterm: @document.incoterm, port_of_discharge: @document.port_of_discharge, port_of_loading: @document.port_of_loading, remarks: @document.remarks, shipment_date: @document.shipment_date, shipment_from: @document.shipment_from, shipper_address1: @document.shipper_address1, shipper_address2: @document.shipper_address2, shipper_address3: @document.shipper_address3, shipper_name: @document.shipper_name, tenor: @document.tenor } }
    assert_redirected_to document_url(@document)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete document_url(@document)
    end

    assert_redirected_to documents_url
  end
end
