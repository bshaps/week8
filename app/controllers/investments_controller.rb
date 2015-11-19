class InvestmentsController < ApplicationController

  def index
    @investments = Investment.order(:ticker).limit(100)

    # fresh_when @investments.maximum(:updated_at)
    # if stale?(@investments.maximum(:updated_at))
    #   respond_to do |format|
    #     format.html
    #   end
    # end

  end

  def show
    respond_to do |format|
      format.json { render json: Investment.find(params[:id]) }
    end
  end
  
end
