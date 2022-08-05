class ExpenseController < ApplicationController

  get "/expenses" do
    Expense.all.to_json
    

  end


  get "/my_expenses/:id" do
  #  binding.pry
  locating_user = User.find(params[:id])
  locating_user.expenses.to_json
  end



  post "/expenses" do

    category_located = Category.find_by(category_name: params[:category_name])

    Expense.create(
      amount: params[:amount],
      category_id: category_located.id,
      date: params[:date],
      expense_name: params[:name],
      user_id: currentUser.id
    )
    end

  delete "/my_expenses/:id" do 
    expense_to_delete = Expense.find(params[:id])

    expense_to_delete.destroy
    {message: "Expense Has Been Deleted"}.to_json
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