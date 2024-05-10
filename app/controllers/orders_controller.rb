class OrdersController < ApplicationController

    def index
        @orders = Order.all
        render json: @orders
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.new(order_params)
        if @order.save
            render json: @order, status: :created, location: @order
        else
            render json: @order.errors, status: :unprocessable_entity
        end
    end
    
    def update
        if @order.update(order_params)
            render json: @order
        else
            render json: @order.errors, status: :unprocessable_entity
        end
    end
    
    def show
        render json: @order
    end

    private 
    
    def order_params
        params.require(:order).permit(:state, :user_id)
    end

end
