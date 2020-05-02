require "sinatra"


get "/" do 
    erb :task, layout: :main
end