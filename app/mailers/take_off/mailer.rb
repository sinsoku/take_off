module TakeOff
  class Mailer < ActionMailer::Base
    layout 'mailer'

    def post_mail headers
      mail headers
    end
  end
end
