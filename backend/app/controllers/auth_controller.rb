class AuthController < ApplicationController
    def create

        user = User.find_by(username:params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: {username:user.username, id:user.id, age:user.age}
        else
            render json: {error:'Failed login'}
        end
    end

    def check_loggin
        if session[:user_id]
            user = User.find(session[:user_id])
            render json: {username:user.username, id:user.id, age:user.age}
        else
            render json: {error:'No one is logged in'}
        end
    end

    def logout
        session[:user_id] = nil
        render json: {error:'Logged out'}
    end
end
