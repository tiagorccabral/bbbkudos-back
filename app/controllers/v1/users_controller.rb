module V1
  class UsersController < ApiController
    before_action :set_user, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: :create

    # GET v1/users
    def index
      @users = User.all
      render json: {data: @users}, except: [:password_digest], status: :accepted
    end

    # GET v1/users/1
    def show
      render json: @user
    end

    # POST v1/users
    def create
      user = User.create(user_params)
      if user.valid?
        @token = encode_token(user_id: user.id)
        render json: {user: user, jwt: @token}, status: :created
      else
        render json: {error: 'Falha ao criar usuário', msg: user.errors},
               status: :not_acceptable
      end
    end

    # PATCH/PUT v1/users/1
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end

    # DELETE v1/users/1
    def destroy
      @user.destroy
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :profile_image)
    end
  end
end