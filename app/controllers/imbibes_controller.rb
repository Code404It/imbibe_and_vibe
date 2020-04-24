class ImbibesController < ApplicationController
  
  get '/imbibes' do
    @imbibes = Imbibe.all
    erb :"imbibes/index"
  end
  
  get '/imbibes/new' do
    @users = User.all
    erb :"imbibes/new"
  end

  get '/imbibes/:id/edit' do
    @users = User.all
    @imbibes = Imbibe.find_by_id(params[:id])
    erb :"imbibes/edit"
  end

  patch '/imbibes/:id' do
    @imbibes = Imbibe.find_by_id(params[:id])
    params.delete("_method")
    if @imbibes.update(params)
      redirect "/imbibes/#{@imbibes.id}"
    else
      redirect "/imbibes/#{@imbibes.id}/edit"
    end
  end

  get '/imbibes/:id' do
    redirect_if_not_logged_in
    @imbibes = Imbibe.find_by_id(params["id"])
    erb :"imbibe/show"
  end

  post '/imbibes' do
    imbibe = Imbibe.new(params)
    if imbibe.save
      redirect "/imbibes/#{imbibe.id}"
    else
      redirect "imbibes/new"
    end
  end

  delete '/imbibes/:id' do
    @imbibe = Imbibe.find_by_id(params[:id])
    if @imbibe.user.id == current_user.id
      @imbibe.destroy
      redirect "/imbibes"
    else
      redirect "/imbibes"
    end
  end 

end 