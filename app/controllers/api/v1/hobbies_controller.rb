module Api
  module V1
    class HobbiesController < ApplicationController
      def index
        render json: Hobby.includes(:bunnies), include: ['bunnies']
      end

      def show
        render json: Hobby.find(params[:id])
      end

      def create
        hobby = Hobby.new(hobby_params)
        if hobby.save
          render json: hobby
        else
          render json: {status: 500, err: 'hobby could not be saved.'}
        end
      end

      def update
        hobby = Hobby.find(params[:id])
        hobby.update(hobby_params)
        render json: {message: "successfully updated!"}, status: 200
      end

      def destroy
        hobby = Hobby.find(params[:id])
        hobby.destroy
        render json: {message: "successfully deleted!"}, status: 200
      end

      private

        def hobby_params
          params.require(:hobby).permit(:name, :bunny_ids => [])
        end
    end
  end
end