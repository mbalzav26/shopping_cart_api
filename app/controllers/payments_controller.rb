class PaymentsController < ApplicationController
    before_action :set_order

    def new
        @payment = Payment.new
    end

    def create
        @payment = Payment.new(payment_params)
        @payment.order = @order
        if @payment.save
            render json: @payment, status: :created, location: @payment
        else
            render json: @payment.errors, status: :unprocessable_entity
        end
    end

    def show
        render json: @payment
    end

    def edit
        @payment = Payment.find(params[:id])
    end

    def update
        @payment = Payment.find(params[:id])
        if @payment.update(payment_params)
            render  json: @payment
        else
            render json: @payment.errors, status: :unprocessable_entity
        end
    end

    private

    def set_order
        @order = Order.find(params[:order_id])
    end

    def payment_params
        params.require(:payment).permit(:amount)
    end

end
