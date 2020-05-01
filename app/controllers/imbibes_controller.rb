class ImbibesController < ApplicationController
  
  get '/imbibes' do
    @imbibes = Imbibe.all
    erb :"imbibes/index"
  end
  
  get '/imbibes/new' do
    @users = User.all
    @vibes = Vibe.all
    erb :"imbibes/new"
  end

  post '/imbibes' do
    imbibe = Imbibe.new(vibe_id:params[:vibe_id],drink:params[:drink],toast_headline:params[:toast_headline], toast_body:params[:toast_body], user_id:current_user.id)
    if imbibe.save
      redirect "/imbibes/#{imbibe.id}"
    else
      redirect "imbibes/new"
    end
  end

  get '/imbibes/:id/edit' do
    @users = User.all
    @vibes = Vibe.all
    @imbibe = Imbibe.find_by_id(params[:id])
    erb :"imbibes/edit"
  end

  patch '/imbibes/:id' do
    @imbibe = Imbibe.find_by_id(params[:id])
    params.delete("_method")
    if @imbibe.update(params)
      redirect "/imbibes/#{@imbibe.id}"
    else
      redirect "/imbibes/#{@imbibe.id}/edit"
    end
  end

  get '/imbibes/:id' do
    #redirect_if_not_logged_in
    @imbibe = Imbibe.find_by_id(params[:id])
    erb :"imbibes/show"
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