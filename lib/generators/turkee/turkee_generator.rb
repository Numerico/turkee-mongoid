require 'rails/generators'

class TurkeeGenerator < Rails::Generators::Base
  
  source_root File.expand_path("../templates", __FILE__)

  desc "Creates initializer and migrations."

  def create_initializer
    template "turkee.rb", "config/initializers/turkee.rb"
  end

end