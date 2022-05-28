# frozen_string_literal: true

class PaymentsController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @payments = Payment.where(category_id: @category.id)
    @total_amount = @payments.sum(:amount)
  end

  def new; end

  def edit; end

  def create
    @payments = current_user.payments.new(payment_params)

    if @payments.save
      redirect_to category_payments_path, notice: 'Payment was successfully added'
    else
      render :new, alert: 'Failed to add payment'
    end
  end

  def destroy
    @payment = Payment.find(params[:id])

    if @payment.destroy
      redirect_to categories_path, notice: 'Payment was successfully deleted'
    else
      render :index, alert: 'Failed to delete payment'
    end
  end

  private

  def payment_params
    params.permit(:name, :amount, :category_id)
  end
end
