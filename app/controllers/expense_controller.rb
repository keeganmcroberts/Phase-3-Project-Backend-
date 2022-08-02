class ExpenseController < ApplicationController

  get "/expenses" do
    Expense.all.to_json
    # { we_in: "AMAZING!" }.to_json

  end
end