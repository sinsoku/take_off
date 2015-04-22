require 'rails/generators'

module TakeOff
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    desc ''
    def install
      route "mount TakeOff::Engine => '/', as: 'take_off'"

      create_file 'app/views/pages/.keep'
      copy_file 'rails_admin.rb', 'config/initializers/rails_admin.rb'
    end
  end
end
