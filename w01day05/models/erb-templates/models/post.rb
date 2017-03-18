class PostModel
  def self.all
    conn = PG.connect("blog")

    #arrayray of posts
    posts = []
    # run a raw sql query
    conn.exec("SELECT * FROM post") do |rows|

      # take the raw data and hydrate the models
      rows.each do |row|
        post = PostModel.hydrate row
      end

    end
    #return the hydrated objects 
    posts
  end

  def self.hydrate row

    Post.new row["name"], row["body"]
  end
end
