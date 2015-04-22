module TakeOff
  class Mail < ActiveRecord::Base
    validates :from, presence: true
    validates :subject, presence: true
    validates :template, presence: true

    def send_to to
      Mailer.post_mail from: from,
        bcc: bcc,
        subject: subject,
        template_path: 'mailer',
        template_name: template,
        to: to
    end
  end
end
