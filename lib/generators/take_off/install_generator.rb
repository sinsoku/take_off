require 'rails/generators'

module TakeOff
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc ''
    def install
      route "mount TakeOff::Engine => '/', as: 'take_off'"

      copy_file 'mailer.text.erb', 'app/views/layouts/mailer.text.erb'
      copy_file 'mailer.html.erb', 'app/views/layouts/mailer.html.erb'
      create_file 'app/views/mailer/.keep'
      create_file 'app/views/pages/.keep'
      rake 'take_off:install:migrations'
      copy_file 'rails_admin.rb', 'config/initializers/rails_admin.rb'
      copy_file 'take_off.rb', 'config/initializers/take_off.rb'
    end
  end
end
