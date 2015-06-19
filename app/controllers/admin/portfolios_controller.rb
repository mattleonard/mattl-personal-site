class Admin::PortfoliosController < AdminController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.all
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      redirect_to [:admin, @portfolio], notice: 'Portfolio was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      redirect_to [:admin, @portfolio], notice: 'Portfolio was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
      redirect_to portfolios_url, notice: 'Portfolio was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_params
      params.require(:portfolio).permit(:title, :photo, :description, :link)
    end
end
