require "sinatra"
require_relative "controllers/posts_controller.rb"
require_relative "controllers/users_controller.rb"
require_relative "controllers/static_controller.rb"
require_relative "classes/post.rb"
require_relative "classes/user.rb"
require_relative "models/post.rb"
require "pg"




  # $posts = [
  #   Post.new("Post 1" , "Some post text "),
  #   Post.new("Post 2" , "Some post text 2")
  #
  # ]
    #  @posts = PostModel.all

    $users = [
      User.new("devops1" , "Samuel" , "Udoh"),
      User.new("devops2" , "Salman" , "Khan"),
      User.new("devops3" , "Steven" , "Reid"),
      User.new("devops4" , "Danny" , "Smith"),
      User.new("devops5" , "Osvaldo" , "Calari")

    ]


# Method overrudes
use Rack::MethodOverride

map "/users" do
use UsersController
end

map "/posts" do
use PostsController
end

run StaticController
