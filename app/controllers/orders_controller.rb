class OrdersController < ApplicationController

    def create
        if(order_params[:user_id] == self.current_user.id)
            user = User.find(self.current_user.id)
            order = Order.create(order_params)
            order.items = params[:items]
            order.save
            render json: order
        else
            render json: { error: true, message: 'You cannot create an order for someone else'}
        end
    end

    def show 
        orders = Order.where("user_id = :user_id and  complete = :complete", { user_id: params[:id], complete: true })
        render json: orders 
    end 

    def update
        order = Order.find(params[:id])
        order.complete = true 
        order.save
        render json: order
    end

    def order_params
        params.permit(:user_id, :fullName, :address, :city, :state, :zipcode, :phone, :country, :complete)
    end

end
