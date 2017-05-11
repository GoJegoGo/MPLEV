module Admin
  class PeriodsController < ApplicationController
    before_action :set_period, only: [:show, :edit, :update, :destroy]

    # GET /periods
    # GET /periods.json
    def index
      @periods = Period.all
      render "admin/periods/index.html.erb"
    end

    # GET /periods/1
    # GET /periods/1.json
    def show
      @period = Period.find(params[:id])
      render "admin/periods/show.html.erb"
    end

    # GET /periods/new
    def new
      @period = Period.new
      render "admin/periods/new.html.erb"
    end

    # GET /periods/1/edit
    def edit
      @period = Period.find(params[:id])
      render "admin/periods/edit.html.erb"
    end

    # POST /periods
    # POST /periods.json
    def create
      @period = Period.new(period_params)
      respond_to do |format|
        if @period.save
          format.html { redirect_to @period, notice: 'Period was successfully created.' }
          format.json { render :show, status: :created, location: @period }
          redirect_to admin_period_path(@period.id)
        else
          format.html { render :new }
          format.json { render json: @period.errors, status: :unprocessable_entity }
          render "admin/periods/new.html.erb"
        end
      end
    end

    # PATCH/PUT /periods/1
    # PATCH/PUT /periods/1.json
    def update
      @period = Period.all
      respond_to do |format|
        if @period.update(period_params)
          format.html { redirect_to @period, notice: 'Period was successfully updated.' }
          format.json { render :show, status: :ok, location: @period }
          redirect_to admin_period_path(@student.id)
        else
          format.html { render :edit }
          format.json { render json: @period.errors, status: :unprocessable_entity }
          render "admin/periods/edit.html.erb"
        end
      end
    end

    # DELETE /periods/1
    # DELETE /periods/1.json
    def destroy
      @student = Student.find(params[:id])
      @period.destroy!
      redirect_to admin_periods_path
      respond_to do |format|
        format.html { redirect_to periods_url, notice: 'Period was successfully destroyed.' }
        format.json { head :no_content }
    end

    def period_params
      params.require(:period).permit!
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_period
        @period = Period.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def period_params
        params.fetch(:period, {})
      end
    end
  end
end