class DashboardController < ApplicationController
  def show
    @pagy, @documentary_credits = pagy(DocumentaryCredit.all)
    @pagy, @documents = pagy(Document.all)
  end
end
