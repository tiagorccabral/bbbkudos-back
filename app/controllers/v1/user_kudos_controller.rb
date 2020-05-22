module V1
  class UserKudosController < ApiController
    before_action :set_user_kudo, only: [:show, :update, :destroy]

    # GET v1/user_kudos
    def index
      @user_kudos = UserKudo.all

      render json: @user_kudos
    end

    def available_user_kudos
      @available_user_kudos = UserKudo.available_kudos(user_kudo_params)

      render json: @available_user_kudos
    end

    # GET v1/user_kudos/1
    def show
      render json: @user_kudo
    end

    # POST v1/user_kudos
    def create
      @user_kudo = UserKudo.new(user_kudo_params)

      if @user_kudo.save
        render json: @user_kudo, status: :created, location: @v1_user_kudo
      else
        render json: @user_kudo.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT v1/user_kudos/1
    def update
      if @user_kudo.update(user_kudo_params)
        render json: @user_kudo
      else
        render json: @user_kudo.errors, status: :unprocessable_entity
      end
    end

    # DELETE v1/user_kudos/1
    def destroy
      @user_kudo.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_kudo
      @user_kudo = UserKudo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_kudo_params
      params.require(:user_kudo).permit(:user_id, :kudo_id)
    end
  end

end