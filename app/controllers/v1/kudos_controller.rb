module V1
  class KudosController < ApiController
    before_action :set_kudo, only: [:show, :update, :destroy]

    # GET /kudos
    def index
      @kudos = Kudo.all

      render json: @kudos
    end

    # GET /kudos/1
    def show
      render json: @kudo
    end

    # POST /kudos
    def create
      @kudo = Kudo.new(kudo_params)

      if @kudo.save
        render json: @kudo, status: :created, location: @kudo
      else
        render json: @kudo.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /kudos/1
    def update
      if @kudo.update(kudo_params)
        render json: @kudo
      else
        render json: @kudo.errors, status: :unprocessable_entity
      end
    end

    # DELETE /kudos/1
    def destroy
      @kudo.destroy
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_kudo
      @kudo = Kudo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def kudo_params
      params.require(:kudo).permit(:name, :type)
    end
  end

end