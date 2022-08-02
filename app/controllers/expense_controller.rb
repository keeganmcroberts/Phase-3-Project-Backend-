class ExpenseController < ApplicationController

  get "/expenses" do
    { we_in: "AMAZING!" }.to_json

  end
end