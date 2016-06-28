class RootController < ApplicationController

  get '/' do
		erb :home
  end


  post '/notifyme' do

    args = {
        email: params[:client_email],
        created_at: Time.now
    }
    #
    # opts = {
    #     created_at: Time.now
    # }
    obj = Octo::Subscriber.new(args).save!
    if obj
      "success"
    else
      "error"
    end
  end
end