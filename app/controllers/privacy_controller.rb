class PrivacyController < ApplicationController

  get '/' do
    erb :cookiepolicy
  end
end