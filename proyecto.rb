require "sinatra"


get "/" do 
    erb :task, layout: :main
end

get "/prueba" do
    erb :delete, layout: :main
end