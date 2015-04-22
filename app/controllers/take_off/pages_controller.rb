module TakeOff
  class PagesController < ApplicationController
    def show
      if exist?
        render file: path, layout: 'application'
      else
        raise ActionController::RoutingError.new 'Not Found'
      end
    end

    private
    def exist?
      Dir.glob(Rails.root.join('app/views', path + '*' )).present?
    end

    def path
      "pages/#{params[:path] || 'index'}"
    end
  end
end
