class PostsController < ApplicationController

def new
  @post = Post.new

    # render view with new Company form
  end
  
  def create
  #   # start with a new Company
  @post = Post.new
  #   # assign user-entered form data to Company's columns
  @post["title"] = params["post"]["title"]
  @post["description"] = params["post"]["description"]
  @post["posted_on"] = params["post"]["posted_on"]
  #   # save Company row
  @post.save
  #   # redirect user
  redirect_to "/posts"
  end

end