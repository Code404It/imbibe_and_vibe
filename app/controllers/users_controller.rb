class UsersController < ApplicationController

    get "/users/signup" do
      
      erb :'users/signup'
    end
  
    post "/users" do
      
      @users = User.new(params)
      
      if @users && @users.save
      
        session[:user_id] = @users.id
        
        redirect "/imbibes"
      else
     
        erb :"users/signup"
      end
    end
  
  end