class UsersController < ApplicationController

    def show
        render json: current_user.to_json(:include => {:carts => {:include => :item }, :items => {} })
    end 

end