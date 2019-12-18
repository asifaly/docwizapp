class DocumentaryCreditsController < ApplicationController
  before_action :set_documentary_credit, only: [:show, :edit, :update, :destroy]

  # GET /documentary_credits
  def index
    @pagy, @documentary_credits = pagy(DocumentaryCredit.all)
  end

  # GET /documentary_credits/1
  def show
  end

  # GET /documentary_credits/new
  def new
    @documentary_credit = DocumentaryCredit.new
    @resp = Faraday.get "https://5df9eebb38678a00145f9aed.mockapi.io/api/v1/documentarycredit/1"
    puts @resp.headers
    if @resp.success?
      body_hash = JSON.parse(@resp.body)
      @documentary_credit.lc_number = body_hash["lc_number"]
      @documentary_credit.issue_date = body_hash["issue_date"]
      @documentary_credit.expiry_date = body_hash["expiry_date"]
      @documentary_credit.currency = body_hash["currency"]
      @documentary_credit.lc_amount = body_hash["amount"]
      @documentary_credit.applicant_name = body_hash["applicant"]
      @documentary_credit.beneficiary_name = body_hash["beneficiary"]
      @documentary_credit.issuing_bank_name = body_hash["issuing_bank"]
      @documentary_credit.tenor = body_hash["tenor"]
      @documentary_credit.shipment_from = body_hash["shipment_from"]
      @documentary_credit.port_of_loading = body_hash["port_of_loading"]
      @documentary_credit.port_of_discharge = body_hash["port_of_discharge"]
      @documentary_credit.final_destination = body_hash["final_destination"]
      @documentary_credit.latest_shipment_date = body_hash["latest_shipment_date"]
      @documentary_credit.goods_description = body_hash["goods_description"]
      @documentary_credit.documents_required = body_hash["documents_required"]
      @documentary_credit.additional_conditions = body_hash["additional_conditions"]
      puts body_hash
    else
      @error = @resp.body
      puts @error
    end
  end

  # GET /documentary_credits/1/edit
  def edit
  end

  # POST /documentary_credits
  def create
    @documentary_credit = DocumentaryCredit.new(documentary_credit_params)

    if @documentary_credit.save
      redirect_to @documentary_credit, notice: 'Documentary credit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /documentary_credits/1
  def update
    if @documentary_credit.update(documentary_credit_params)
      redirect_to @documentary_credit, notice: 'Documentary credit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /documentary_credits/1
  def destroy
    @documentary_credit.destroy
    redirect_to documentary_credits_url, notice: 'Documentary credit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_documentary_credit
      @documentary_credit = DocumentaryCredit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def documentary_credit_params
      params.require(:documentary_credit).permit(:lc_number, :issue_date, :expiry_date, :currency, :lc_amount, :applicant_name, :applicant_address1, :applicant_address2, :applicant_address3, :beneficiary_name, :beneficiary_address1, :beneficiary_address2, :beneficiary_address3, :issuing_bank_name, :issuing_bank_address1, :issuing_bank_address2, :issuing_bank_address3, :tenor, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :latest_shipment_date, :partial_shipment, :transhipment, :goods_description, :documents_required, :additional_conditions, :drawee, :available_with, :available_by, :remarks)
    end
end
