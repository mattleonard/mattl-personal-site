class AboutMesController < ApplicationController
  before_action :set_about_me, only: [:show]

  # GET /about_mes
  def index
    @professional = AboutMe.professional
    @hobbies = AboutMe.hobbies
  end

  # GET /about_mes/1
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_me
      @about_me = AboutMe.find(params[:id])
    end
end
