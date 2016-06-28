# config.ru
require 'sinatra/base'
require 'sinatra/content_for'

# pull in the helpers and controllers
require './app/helpers/application_helper.rb'
require './app/controllers/application_controller.rb'

Dir.glob('./app/{helpers,controllers}/*.rb').each { |file| require file }

# map the controllers to routes
map('/') {run RootController}
map('/about-us') {run AboutUsController}
map('/contact') {run ContactUsController}
map('/faq') {run FaqController}
map('/jobs') {run JobsController}
