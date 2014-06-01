class Admin::AboutMesController < AdminController
  before_action :set_about_me, only: [:show, :edit, :update, :destroy]

  # GET /about_mes
  # GET /about_mes.json
  def index
    @about_mes = AboutMe.all
  end

  # GET /about_mes/1
  # GET /about_mes/1.json
  def show
  end

  # GET /about_mes/new
  def new
    @about_me = AboutMe.new
  end

  # GET /about_mes/1/edit
  def edit
  end

  # POST /about_mes
  # POST /about_mes.json
  def create
    @about_me = AboutMe.new(about_me_params)

    if @about_me.save
      redirect_to [:admin, @about_me], notice: 'About me was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /about_mes/1
  # PATCH/PUT /about_mes/1.json
  def update
    if @about_me.update(about_me_params)
      redirect_to [:admin, @about_me], notice: 'About me was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /about_mes/1
  # DELETE /about_mes/1.json
  def destroy
    @about_me.destroy
    redirect_to admin_about_mes_url, notice: 'About me was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_me
      @about_me = AboutMe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_me_params
      params.require(:about_me).permit(:title, :subtitle, :description, :photo, :type)
    end
end
