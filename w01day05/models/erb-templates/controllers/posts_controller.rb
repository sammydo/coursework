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
    # "Create Post"

       #create new posts
       post = Post.new params[:name], params[:body]

       #save post to "database" (push to array)
       $posts.push post

       #redirect
       redirect "/posts"
  end

  get "/new" do #"/" is router and do is controller . get is a function
    erb :new
  end

  put "/:id" do #"/" is router and do is controller . get is a function
    # "update"

    # load the object we want to update
      id = params[:id].to_i

      # dummy data
      post = $posts[id]

      # put the changes in to the object
      post.name = params[:name]
      post.body = params[:body]

      # save to the database
      $posts[id] = post

      # redirect to another page ( show )
      redirect "/posts/#{id}"

  end

  get "/:id/edit" do #"/" is router and do is controller . get is a function
    # "EDIT"
    @id = params[:id].to_i


    @post = $posts[@id]
    erb :edit

  end

  get "/:id" do #"/" is router and do is controller . get is a function
    id = params[:id].to_i

    @post = $posts[id]

       erb :show
  end

  delete "/:id" do #"/" is router and do is controller . get is a function
    # "delete"
    id = params[:id].to_i

    $posts.delete_at(id)

      redirect "/posts"
  end

end
