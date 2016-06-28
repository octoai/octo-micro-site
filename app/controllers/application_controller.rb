# application_controller.rb
require 'octocore'
class ApplicationController < Sinatra::Base

  helpers ApplicationHelper, Sinatra::ContentFor

  configure do
    # Sinatra Configuration
    enable :sessions

    # Use config file
    # File.join(Dir.pwd, 'config', 'config.yml')
  end

  before do
    # before hitting every url
  end

  Octo.connect_with(File.join(Dir.pwd, 'config'))


  # set folder for templates to ../views, but make the path absolute
  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

end
