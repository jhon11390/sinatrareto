require "sinatra"
require "make_todo"


get "/" do 
    erb :task, layout: :main
end