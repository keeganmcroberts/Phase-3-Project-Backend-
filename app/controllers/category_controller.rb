class CategoryController < ApplicationController

  get "/categories" do
    { we_in: "YAY!" }.to_json
    
  end
end