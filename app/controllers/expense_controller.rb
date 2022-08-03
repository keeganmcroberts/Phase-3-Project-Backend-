class ExpenseController < ApplicationController

  get "/expenses" do
    Expense.all.to_json
    # { we_in: "AMAZING!" }.to_json

  end

  post "/expenses" do
    Expense.create(
      amount: params[:amount],
      # we don't know the category id, only the category name, 
      category_id: params[:category_id],
      date: params[:date],
      # need it to be associated with currentUser 
      # user_id: params[:currentUser.id]
    )

  delete "/expenses" do 
    

  end

end