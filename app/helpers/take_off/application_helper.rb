module TakeOff
  module ApplicationHelper
    def validate_release_date! date
      unless release_date? date
        raise ActionController::RoutingError.new 'not found'
      end
    end

    def release_date? date
      Time.zone.parse(date) <= Time.current
    end
  end
end
