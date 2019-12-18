class DocumentsController < ApplicationController
  before_action :find_doccredit, only: [:create, :new]
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  # GET /documents
  def index
    @pagy, @documents = pagy(Document.all)
  end

  # GET /documents/1
  def show
  end

  # GET /documents/new
  def new
    @document = @documentary_credit.documents.build
    set_document_values
  end

  # GET /documents/1/edit
  def edit
  end

  # POST /documents
  def create
    @document = @documentary_credit.documents.create(document_params)

    if @document.save
      redirect_to @document, notice: 'Document was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /documents/1
  def update
    if @document.update(document_params)
      redirect_to @document, notice: 'Document was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /documents/1
  def destroy
    @document.destroy
    redirect_to documents_url, notice: 'Document was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def find_doccredit
      @documentary_credit = DocumentaryCredit.find(params[:documentary_credit_id])
    end

    def set_document
      @document = Document.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def document_params
      params.require(:document).permit(:description, :currency, :amount, :documents_date, :shipment_date, :shipment_from, :port_of_loading, :port_of_discharge, :final_destination, :incoterm, :goods, :remarks, :tenor, :consignee_name, :consignee_address1, :consignee_address2, :consignee_address3, :shipper_name, :shipper_address1, :shipper_address2, :shipper_address3, :documentary_credit_id)
    end

    def set_document_values
      @document.currency = @documentary_credit.currency
      @document.amount = @documentary_credit.lc_amount
      @document.shipment_from = @documentary_credit.shipment_from
      @document.final_destination = @documentary_credit.final_destination
      @document.port_of_loading = @documentary_credit.port_of_loading
      @document.port_of_discharge = @documentary_credit.port_of_discharge
      @document.consignee_name = @documentary_credit.applicant_name
      @document.consignee_address1 = @documentary_credit.applicant_address1
      @document.consignee_address2 = @documentary_credit.applicant_address2
      @document.consignee_address3 = @documentary_credit.applicant_address3
      @document.shipper_name = @documentary_credit.beneficiary_name
      @document.shipper_address1 = @documentary_credit.beneficiary_address1
      @document.shipper_address2 = @documentary_credit.beneficiary_address2
      @document.shipper_address3 = @documentary_credit.beneficiary_address3
      @document.goods = @documentary_credit.goods_description
    end
end
