module Api
  module V1
    class HobbiesController < ApplicationController
      def index
        render json: Hobby.includes(:bunnies), include: ['bunnies']
      end
    end
  end
end