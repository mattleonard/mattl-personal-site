class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show]

  # GET /portfolios
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

end
