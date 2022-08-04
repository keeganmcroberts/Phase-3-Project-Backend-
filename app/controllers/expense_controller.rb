class ExpenseController < ApplicationController

  get "/expenses" do
    Expense.all.to_json
    

  end

  get "/my_expenses/:user_id" do
  #  binding.pry
  user_to_locate.find(:user_id)
  return user_locate.expenses.to_json
  end




  # post "/expenses" do

  #   category_located = Category.find_by(category_name: params[:category_name])

  #   Expense.create(
  #     amount: params[:amount],
  #     category_id: category_located.id,
  #     date: params[:date],
  #     # user_id: currentUser.id
  #   )
  #   end

  # delete "/expenses" do 
    

  # end

end