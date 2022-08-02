class UserController < ApplicationController

  get "/users" do
    { we_in: "WHOOO!" }.to_json

  end
end