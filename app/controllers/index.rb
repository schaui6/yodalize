get '/' do
  @texts = Text.all
  # Look in app/views/index.erb
  erb :index
end

post '/messages' do 
  @text = Text.new(message: params[:message])
  if @text.save
    redirect '/' 
  else
    erb :index
  end
end

# get 'https://yoda.p.mashape.com/yoda' do
#   response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.",
#   headers:{
#     "X-Mashape-Key" => "YMKaRQHEKnmsh25rHmXIzXI5jvSgp1woPy4jsn8mQqbObRWIsw",
#     "Accept" => "text/plain"
#   }
# end