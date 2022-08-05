class UserController < ApplicationController

  get "/users" do
    User.all.to_json
    # { we_in: "WHOOO!" }.to_json
  end

  patch "/users" do
    User.all.to_json

  end
end