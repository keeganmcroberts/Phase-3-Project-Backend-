class UserController < ApplicationController

  get "/users" do
    User.all.to_json

  end

  patch "/users/:id" do
    # User.all.to_json
    edited_salary = User.find(params[:id])
    edited_salary.update(params)
    edited_salary.to_json
  end

  
  # get "/users" do
  #   binding.pry

  #   params.include?("include_expenses") ? Users.includes(:expenses).to_json(get_users_json_config(include_expenses: true)) : Users.all.to_json(get_users_json_config)

  # end

  # private
  #   def get_users_json_config(include_expenses: false)
  #     if include_expenses
  #       options = { methods: :expense_list }
  #     end
  #     options
  #   end
    
end

