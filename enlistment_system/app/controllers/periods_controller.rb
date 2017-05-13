
  class PeriodsController < ApplicationController
    before_action :set_period, only: [:show, :edit, :update, :destroy]

    # GET /periods
    # GET /periods.json
    def index
      @periods = Period.all
      render "periods/index.html.erb"
    end

    # GET /periods/1
    # GET /periods/1.json
    def show
      @period = Period.find(params[:id])
      render "periods/show.html.erb"
    end

    # GET /periods/new
    def new
      @period = Period.new
      render "periods/new.html.erb"
    end

    # GET /periods/1/edit
    def edit
      @period = Period.find(params[:id])
      render "periods/edit.html.erb"
    end

    # POST /periods
    # POST /periods.json
    def create
      @period = Period.new(period_params)
      respond_to do |format|
        if @period.save
          format.html { redirect_to period_path(@period.id), notice: 'Period was successfully created.' }
          format.json { render :show, status: :created, location: @period }
        else
          format.html { render :new }
          format.json { render json: @period.errors, status: :unprocessable_entity }
          render "periods/new.html.erb"
        end
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_period
        @period = Period.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def period_params
        params.require(:period).permit!
        # params.fetch(:period, {})
      end

end