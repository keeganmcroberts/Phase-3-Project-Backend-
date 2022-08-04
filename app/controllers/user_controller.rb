class UserController < ApplicationController




  
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
