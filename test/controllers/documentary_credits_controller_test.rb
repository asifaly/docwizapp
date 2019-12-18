require 'test_helper'

class DocumentaryCreditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @documentary_credit = documentary_credits(:one)
  end

  test "should get index" do
    get documentary_credits_url
    assert_response :success
  end

  test "should get new" do
    get new_documentary_credit_url
    assert_response :success
  end

  test "should create documentary_credit" do
    assert_difference('DocumentaryCredit.count') do
      post documentary_credits_url, params: { documentary_credit: { additional_conditions: @documentary_credit.additional_conditions, applicant_address1: @documentary_credit.applicant_address1, applicant_address2: @documentary_credit.applicant_address2, applicant_address3: @documentary_credit.applicant_address3, applicant_name: @documentary_credit.applicant_name, available_by: @documentary_credit.available_by, available_with: @documentary_credit.available_with, beneficiary_address1: @documentary_credit.beneficiary_address1, beneficiary_address2: @documentary_credit.beneficiary_address2, beneficiary_address3: @documentary_credit.beneficiary_address3, beneficiary_name: @documentary_credit.beneficiary_name, currency: @documentary_credit.currency, documents_required: @documentary_credit.documents_required, drawee: @documentary_credit.drawee, expiry_date: @documentary_credit.expiry_date, final_destination: @documentary_credit.final_destination, goods_description: @documentary_credit.goods_description, issue_date: @documentary_credit.issue_date, issuing_bank_address1: @documentary_credit.issuing_bank_address1, issuing_bank_address2: @documentary_credit.issuing_bank_address2, issuing_bank_address3: @documentary_credit.issuing_bank_address3, issuing_bank_name: @documentary_credit.issuing_bank_name, latest_shipment_date: @documentary_credit.latest_shipment_date, lc_amount: @documentary_credit.lc_amount, lc_number: @documentary_credit.lc_number, partial_shipment: @documentary_credit.partial_shipment, port_of_discharge: @documentary_credit.port_of_discharge, port_of_loading: @documentary_credit.port_of_loading, remarks: @documentary_credit.remarks, shipment_from: @documentary_credit.shipment_from, tenor: @documentary_credit.tenor, transhipment: @documentary_credit.transhipment } }
    end

    assert_redirected_to documentary_credit_url(DocumentaryCredit.last)
  end

  test "should show documentary_credit" do
    get documentary_credit_url(@documentary_credit)
    assert_response :success
  end

  test "should get edit" do
    get edit_documentary_credit_url(@documentary_credit)
    assert_response :success
  end

  test "should update documentary_credit" do
    patch documentary_credit_url(@documentary_credit), params: { documentary_credit: { additional_conditions: @documentary_credit.additional_conditions, applicant_address1: @documentary_credit.applicant_address1, applicant_address2: @documentary_credit.applicant_address2, applicant_address3: @documentary_credit.applicant_address3, applicant_name: @documentary_credit.applicant_name, available_by: @documentary_credit.available_by, available_with: @documentary_credit.available_with, beneficiary_address1: @documentary_credit.beneficiary_address1, beneficiary_address2: @documentary_credit.beneficiary_address2, beneficiary_address3: @documentary_credit.beneficiary_address3, beneficiary_name: @documentary_credit.beneficiary_name, currency: @documentary_credit.currency, documents_required: @documentary_credit.documents_required, drawee: @documentary_credit.drawee, expiry_date: @documentary_credit.expiry_date, final_destination: @documentary_credit.final_destination, goods_description: @documentary_credit.goods_description, issue_date: @documentary_credit.issue_date, issuing_bank_address1: @documentary_credit.issuing_bank_address1, issuing_bank_address2: @documentary_credit.issuing_bank_address2, issuing_bank_address3: @documentary_credit.issuing_bank_address3, issuing_bank_name: @documentary_credit.issuing_bank_name, latest_shipment_date: @documentary_credit.latest_shipment_date, lc_amount: @documentary_credit.lc_amount, lc_number: @documentary_credit.lc_number, partial_shipment: @documentary_credit.partial_shipment, port_of_discharge: @documentary_credit.port_of_discharge, port_of_loading: @documentary_credit.port_of_loading, remarks: @documentary_credit.remarks, shipment_from: @documentary_credit.shipment_from, tenor: @documentary_credit.tenor, transhipment: @documentary_credit.transhipment } }
    assert_redirected_to documentary_credit_url(@documentary_credit)
  end

  test "should destroy documentary_credit" do
    assert_difference('DocumentaryCredit.count', -1) do
      delete documentary_credit_url(@documentary_credit)
    end

    assert_redirected_to documentary_credits_url
  end
end
