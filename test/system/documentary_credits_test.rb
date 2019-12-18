require "application_system_test_case"

class DocumentaryCreditsTest < ApplicationSystemTestCase
  setup do
    @documentary_credit = documentary_credits(:one)
  end

  test "visiting the index" do
    visit documentary_credits_url
    assert_selector "h1", text: "Documentary Credits"
  end

  test "creating a Documentary credit" do
    visit documentary_credits_url
    click_on "New Documentary Credit"

    fill_in "Additional conditions", with: @documentary_credit.additional_conditions
    fill_in "Applicant address1", with: @documentary_credit.applicant_address1
    fill_in "Applicant address2", with: @documentary_credit.applicant_address2
    fill_in "Applicant address3", with: @documentary_credit.applicant_address3
    fill_in "Applicant name", with: @documentary_credit.applicant_name
    fill_in "Available by", with: @documentary_credit.available_by
    fill_in "Available with", with: @documentary_credit.available_with
    fill_in "Beneficiary address1", with: @documentary_credit.beneficiary_address1
    fill_in "Beneficiary address2", with: @documentary_credit.beneficiary_address2
    fill_in "Beneficiary address3", with: @documentary_credit.beneficiary_address3
    fill_in "Beneficiary name", with: @documentary_credit.beneficiary_name
    fill_in "Currency", with: @documentary_credit.currency
    fill_in "Documents required", with: @documentary_credit.documents_required
    fill_in "Drawee", with: @documentary_credit.drawee
    fill_in "Expiry date", with: @documentary_credit.expiry_date
    fill_in "Final destination", with: @documentary_credit.final_destination
    fill_in "Goods description", with: @documentary_credit.goods_description
    fill_in "Issue date", with: @documentary_credit.issue_date
    fill_in "Issuing bank address1", with: @documentary_credit.issuing_bank_address1
    fill_in "Issuing bank address2", with: @documentary_credit.issuing_bank_address2
    fill_in "Issuing bank address3", with: @documentary_credit.issuing_bank_address3
    fill_in "Issuing bank name", with: @documentary_credit.issuing_bank_name
    fill_in "Latest shipment date", with: @documentary_credit.latest_shipment_date
    fill_in "Lc amount", with: @documentary_credit.lc_amount
    fill_in "Lc number", with: @documentary_credit.lc_number
    fill_in "Partial shipment", with: @documentary_credit.partial_shipment
    fill_in "Port of discharge", with: @documentary_credit.port_of_discharge
    fill_in "Port of loading", with: @documentary_credit.port_of_loading
    fill_in "Remarks", with: @documentary_credit.remarks
    fill_in "Shipment from", with: @documentary_credit.shipment_from
    fill_in "Tenor", with: @documentary_credit.tenor
    fill_in "Transhipment", with: @documentary_credit.transhipment
    click_on "Create Documentary credit"

    assert_text "Documentary credit was successfully created"
    assert_selector "h1", text: "Documentary Credits"
  end

  test "updating a Documentary credit" do
    visit documentary_credit_url(@documentary_credit)
    click_on "Edit", match: :first

    fill_in "Additional conditions", with: @documentary_credit.additional_conditions
    fill_in "Applicant address1", with: @documentary_credit.applicant_address1
    fill_in "Applicant address2", with: @documentary_credit.applicant_address2
    fill_in "Applicant address3", with: @documentary_credit.applicant_address3
    fill_in "Applicant name", with: @documentary_credit.applicant_name
    fill_in "Available by", with: @documentary_credit.available_by
    fill_in "Available with", with: @documentary_credit.available_with
    fill_in "Beneficiary address1", with: @documentary_credit.beneficiary_address1
    fill_in "Beneficiary address2", with: @documentary_credit.beneficiary_address2
    fill_in "Beneficiary address3", with: @documentary_credit.beneficiary_address3
    fill_in "Beneficiary name", with: @documentary_credit.beneficiary_name
    fill_in "Currency", with: @documentary_credit.currency
    fill_in "Documents required", with: @documentary_credit.documents_required
    fill_in "Drawee", with: @documentary_credit.drawee
    fill_in "Expiry date", with: @documentary_credit.expiry_date
    fill_in "Final destination", with: @documentary_credit.final_destination
    fill_in "Goods description", with: @documentary_credit.goods_description
    fill_in "Issue date", with: @documentary_credit.issue_date
    fill_in "Issuing bank address1", with: @documentary_credit.issuing_bank_address1
    fill_in "Issuing bank address2", with: @documentary_credit.issuing_bank_address2
    fill_in "Issuing bank address3", with: @documentary_credit.issuing_bank_address3
    fill_in "Issuing bank name", with: @documentary_credit.issuing_bank_name
    fill_in "Latest shipment date", with: @documentary_credit.latest_shipment_date
    fill_in "Lc amount", with: @documentary_credit.lc_amount
    fill_in "Lc number", with: @documentary_credit.lc_number
    fill_in "Partial shipment", with: @documentary_credit.partial_shipment
    fill_in "Port of discharge", with: @documentary_credit.port_of_discharge
    fill_in "Port of loading", with: @documentary_credit.port_of_loading
    fill_in "Remarks", with: @documentary_credit.remarks
    fill_in "Shipment from", with: @documentary_credit.shipment_from
    fill_in "Tenor", with: @documentary_credit.tenor
    fill_in "Transhipment", with: @documentary_credit.transhipment
    click_on "Update Documentary credit"

    assert_text "Documentary credit was successfully updated"
    assert_selector "h1", text: "Documentary Credits"
  end

  test "destroying a Documentary credit" do
    visit edit_documentary_credit_url(@documentary_credit)
    click_on "Delete", match: :first
    click_on "Confirm"

    assert_text "Documentary credit was successfully destroyed"
  end
end
