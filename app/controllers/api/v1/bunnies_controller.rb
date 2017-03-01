module Api
  module V1
    class BunniesController < ApplicationController
      def index
        render json: Bunny.includes(:hobbies), include: ['hobbies']
      end
    end
  end
end