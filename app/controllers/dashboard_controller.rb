class DashboardController < ApplicationController
  def show
    @pagy, @documentary_credits = pagy(DocumentaryCredit.all)
  end
end
