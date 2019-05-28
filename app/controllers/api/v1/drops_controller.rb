module Api
  module V1
    class DropsController < Api::V1::ApiController
      # do not authenticate users before viewing product listing or individual drops
      before_action :authenticate_user!, except: %i[index show]
      before_action :set_drop, only: %i[show]

      # GET /drops
      def index
        @drops = Drop.all.order('id')
        render json: { success: true, data: @drops }, status: :ok
      end

      # GET /drops/:id
      def show
        render json: { success: true, data: @drop }, status: :ok
      end

      private

      def set_drop
        @drop = Drop.find(params[:id])
        rescue StandardError => error
        render json: { success: false, error: error }, status: 404
      end

      def drop_params
        params.require(:drop).permit(:title, :release_date, :release_time, :description, :price, :brand)
      end

    end
  end
end