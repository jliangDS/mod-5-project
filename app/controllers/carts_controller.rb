class CartsController < ApplicationController

    def create
        if(cart_params[:user_id] == self.current_user.id)
            cart = Cart.create(cart_params)
            render json: cart, include: [ :item ]
        else
            render json: { error: true, message: 'You cannot add to cart for someone else'}
        end
    end

    def destroy
        cart = Cart.find(params[:id])
        if( cart.user.id == self.current_user.id )
            cart.destroy
            render json: cart, include: [ :item ]
        else
            render json: { error: true, message: 'You cannot delete a cart for someone else'}
        end
    end
     
    def cart_params
        params.permit(:user_id, :item_id)
    end

end