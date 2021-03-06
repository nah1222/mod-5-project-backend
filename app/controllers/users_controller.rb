class UsersController < SessionsController
  skip_before_action :verify_authenticity_token
  
  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(user_params)

    if user.valid?
      payload = { user_id: user.id }
      render json: { user: user, jwt: encode_token(user.id) }
    else
      render json: { error: user.errors.full_messages }, status: :not_acceptable
    end
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  def destroy
    user = User.find(params[:id])
    user.destroy()
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
