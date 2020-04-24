class VibesController < ApplicationController
  
    get '/vibes' do
      @vibes = Vibe.all
      erb :"vibes/index"
    end
    
    get '/vibes/new' do
      @users = User.all
      erb :"vibes/new"
    end
  
    get '/vibes/:id/edit' do
      @users = User.all
      @vibes = vibe.find_by_id(params[:id])
      erb :"vibes/edit"
    end
  
    patch '/vibes/:id' do
      @vibes = Vibe.find_by_id(params[:id])
      params.delete("_method")
      if @vibes.update(params)
        redirect "/vibes/#{@vibes.id}"
      else
        redirect "/vibes/#{@vibes.id}/edit"
      end
    end
  
    get '/vibes/:id' do
      redirect_if_not_logged_in
      @vibes = Vibe.find_by_id(params["id"])
      erb :"vibe/show"
    end
  
    post '/vibes' do
      vibe = Vibe.new(params)
      if vibe.save
        redirect "/vibes/#{vibe.id}"
      else
        redirect "vibes/new"
      end
    end
  
    delete '/vibes/:id' do
      @vibe = Vibe.find_by_id(params[:id])
      if @vibe.user.id == current_user.id
        @vibe.destroy
        redirect "/vibes"
      else
        redirect "/vibes"
      end
    end 
  
  end 