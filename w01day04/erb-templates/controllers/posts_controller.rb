class PostsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }


  get "/" do #"/" is router and do is controller . get is a function
  @posts = $posts

    erb :index
  end

  post "/" do #"/" is router and do is controller . get is a function
    "Create Post"
  end

  get "/new" do #"/" is router and do is controller . get is a function
    erb :new
  end

  put "/:id" do #"/" is router and do is controller . get is a function
    "update"
  end

  get "/:id/edit" do #"/" is router and do is controller . get is a function
    "EDIT"
  end

  get "/:id" do #"/" is router and do is controller . get is a function
    id = params[:id].to_i

    @post = $posts[id]

       erb :show
  end

  delete "/:id" do #"/" is router and do is controller . get is a function
    "delete"
  end

end
