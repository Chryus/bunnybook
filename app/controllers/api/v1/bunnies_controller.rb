module Api
  module V1
    class BunniesController < ApplicationController
      def index
        debugger
        render json: Bunny.includes(:hobbies), include: ['hobbies']
      end

      def show
        render json: Bunny.find(params[:id], include: ['hobbies'])
      end

      def create
        bunny = Bunny.new(bunny_params)
        if bunny.save
          render json: bunny
        else
          render json: {status: 500, err: 'bunny could not be saved.'}
        end
      end

      def update
        bunny = Bunny.find(params[:id])
        bunny.update(bunny_params)
        render json: {message: "successfully updated!"}, status: 200
      end

      def destroy
        bunny = Bunny.find(params[:id])
        bunny.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private

        def bunny_params
          params.require(:bunny).permit(:name, :breed, :temperament, :weight, :age, bunny_hobbies_attributes: [:id, :hobby_id, :proficiency])
        end
    end
  end
end