class StaticController < Sinatra::Base

  get "/" do
    "Homepage"
  end

  get "/:id" do
  "Show Post #{params[:id]}"
  end
end
