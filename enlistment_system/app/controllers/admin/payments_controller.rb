module Admin
  class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
    @payments = student.payments
    student = Student.find(params[:student_id])
    
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
    student = Student.find(params[:student_id])
    @payment = student.payments.find(params[:id])
  end

  # GET /payments/new
  def new
    @payment = Payment.new
    @payment.assessment = Student.find(params[:student_id]).assessment
  end

  # GET /payments/1/edit
  def edit
    student = Student.find(params[:student_id])
    @payment = student.payment.find(params[:id])
  end

  # POST /payments
  # POST /payments.json
  def create
    @payment = Payment.new(payment_params)
    # student = Student.find(params[:student_id])
    # @payment = student.payments.create(params[:payment])
    # @payment = Payment.new(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
    student = Student.find(params[:student_id])
    @payment = student.payments.find(params[:id])
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    #1st you retrieve the post thanks to params[:post_id]
    student = Student.find(params[:student_id])
    #2nd you retrieve the comment thanks to params[:id]
    @payment = student.payments.find(params[:id])

    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit!
    end
end
end
