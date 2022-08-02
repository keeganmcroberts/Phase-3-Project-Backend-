class CategoryController < ApplicationController

  get "/categories" do
    Category.all.to_json
    # { we_in: "YAY!" }.to_json
    
  end
end