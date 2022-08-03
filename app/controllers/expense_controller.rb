class ExpenseController < ApplicationController

  get "/expenses" do
    Expense.all.to_json
    # { we_in: "AMAZING!" }.to_json

  end

  post "/expenses" do

    category_located = Category.find_by(category_name: params[:category_name])

    Expense.create(
      amount: params[:amount],
      category_id: category_located.id,
      date: params[:date],
      # user_id: currentUser.id
    )
    end

  delete "/expenses" do 
    

  end

end