require "sinatra"
require "make_todo"


get "/" do
    @list = Tarea.all
    erb :task, layout: :main
end

get "/create" do
    erb :formtask, layout: :main
end

get "/completed" do
    erb :completed, layout: :main
end

get "/:task" do
    @list = Tarea.all
    @idtarea = 0
    @list.each do |element|
        if element["title"] == params[:task]
            @idtarea= element["id"]
        end
    end
    @tasktitle = Tarea.find(@idtarea)
    @task = @tasktitle["title"]
    erb :delete, layout: :main
end



post "/create" do
    @task = params["task"]
    @message = "creada"
    Tarea.create(@task)
    erb :confirmed, layout: :main
end





delete "/:task" do
    @list = Tarea.all
    @idtarea = 0
    @list.each do |element|
        if element["title"] == params[:task]
            @idtarea= element["id"]
        end
    end
    @tasktitle = Tarea.find(@idtarea)
    @task = @tasktitle["title"]
    erb :delete, layout: :main
    @message = "borrada"
    Tarea.destroy(@idtarea)
    erb :confirmed, layout: :main
end




put "/:task" do

end