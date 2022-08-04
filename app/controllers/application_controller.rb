class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/user" do
    { message: "Good luck with your project!" }.to_json
  end

  post "/login" do
    

    userToLogin = User.find_by( username: params[:username])
    # binding.pry
    if userToLogin

      if ( userToLogin.password == params[:password] )
        return userToLogin.to_json(include: :expenses)
      else
        return {message: "incorrect password"}.to_json
      end

    else
      return {message: "This username and password do not match"}.to_json
    end
  end


end
