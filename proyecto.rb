require "sinatra"
require "make_todo"


get "/" do
    @list = Tarea.all
    erb :task, layout: :main
end

get "/create" do
    erb :formtask, layout: :main
end

get "/delete" do
    erb :delete, layout: :main
end

get "/:taskid" do
    @taskid = params[:taskid]
    @tasktitle = Tarea.find(@taskid)
    @task = @tasktitle["title"]
    erb :delete, layout: :main
end

post "/create" do
    @task = params["task"]
    @message = "creada"
    Tarea.create(@task)
    erb :confirmed, layout: :main
end


delete "/:taskid" do
    @taskid = params[:taskid]
    @tasktitle = Tarea.find(@taskid)
    @task = @tasktitle["title"]
    @message = "borrada"
    Tarea.destroy(@taskid)
    erb :confirmed, layout: :main
end


put "/" do

end