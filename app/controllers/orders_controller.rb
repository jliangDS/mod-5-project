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

    def update
        # if(order_params[:user_id] == self.current_user.id)
        #     user = User.find(self.current_user.id)
            order = Order.find(params[:id])
            order.complete = true 
            order.save
            render json: order
        # else
        #     render json: { error: true, message: 'You cannot compete an order for someone else'}
        # end
    end

    def order_params
        params.permit(:user_id, :fullName, :address, :city, :state, :zipcode, :phone, :country, :complete)
    end

end
