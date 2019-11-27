class AuthenticationController < ApplicationController
    
    def login 
        users = User.where({ name: params[:name]})
        user = users[0]
        token = JWT.encode( { id: user.id }, 'asdljasldkfjs', 'HS256')
        if(user && user.authenticate(params[:password]))
            token = JWT.encode( { id: user.id }, 'asdljasldkfjs', 'HS256')
            render json: { success: true, id: user.id, token: token }
        else
            render json: { success: false, id: nil }
        end 
    end
end
