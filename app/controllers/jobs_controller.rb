class JobsController < ApplicationController

  get '/' do
    erb :jobs
  end
  get '/dev' do
    erb :developer
  end
  get '/dataeng' do
    erb :dataeng
  end
end