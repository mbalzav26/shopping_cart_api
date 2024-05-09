class PaymentsController < ApplicationController
    before_action :set_order

    def new
        @payment = Payment.new
    end

    def create
        @payment = Payment.new(payment_params)
        @payment.order = @order
        if @payment.save
            redirect_to @order
        else
            render :new
        end
    end

    def show
        @payment = Payment.find(params[:id])
    end

    def edit
        @payment = Payment.find(params[:id])
    end

    def update
        @payment = Payment.find(params[:id])
        if @payment.update(payment_params)
            redirect_to @order
        else
            render :edit
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
