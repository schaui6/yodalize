get '/' do
  @texts = Text.all
  # Look in app/views/index.erb
  erb :index
end

post '/messages' do
  @texts = Text.all 
  @text = Text.new(message: params[:message])
  yoda_response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=#{params[:message]}",
  headers:{
    "X-Mashape-Key" => ENV["SECRET"],
    "Accept" => "text/plain"
  }
  @text.yodalized_message = yoda_response.raw_body
  
    
  if @text.save
    # if request.xhr?
      # erb :_display_messages, layout: false, locals: {texts: @texts}
    # end
    redirect '/' 
  else
    erb :index
  end
end

