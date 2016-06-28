class ContactUsController < ApplicationController

  get '/' do
    erb :contactus
  end
  post '/' do
    args = {
        email: params[:emailid],
        created_at: Time.now,
        firstname: params[:fname],
        lastname: params[:lname],
        message: params[:contactusmessage],
        typeofrequest: params[:requesttype]
    }
        obj = Octo::ContactUs.new(args).save!
    if obj
      "success"
    else
      "error"
    end
  end


end