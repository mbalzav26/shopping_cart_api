class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            redirect_to @order
        else
            render :new
        end
    end

    def show
        @order = Order.find(params[:id])
    end

    private 
    
    def order_params
        params.require(:order).permit(:state, :user_id)
    end

end
