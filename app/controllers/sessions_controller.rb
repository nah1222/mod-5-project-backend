class SessionsController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def encode_token(payload)
        JWT.encode(payload, 'my_secret')
    end

    def session_user
        decoded_hash = decoded_token
        if !decoded_hash.empty?
            user_id = decoded_hash[0]['user_id']
            @user=User.find_by(id:user_id)
        else
            nil
        end
    end

    def logged_in?
        !!session_user
    end

    def auth_header
        request.headers['Authorization']
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            payload = {user_id: user.id}
            token = encode_token(payload)
            render json: {user:user, jwt: token, sucess: "Welcome back, #{user.username}"}
        else
            render json:{failure:"Log in failed! Username or password invalid"}
        end
    end

    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'my_secret', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                []
            end
        end
    end

    def auto_login
        if session_user
            render json:session_user
        else
            render json:{errors:'No User Logged In'}
        end
    end

    def logged_in?
        !!session_user
    end

    def require_login
        render json:{message: 'Please Login'}, status: :unauthorized unless logged_in?
    end
end