class PostsController < ApplicationController

  def index
    @posts = Post.all
    @posts.each_with_index do |post, index|
      if index == index[0] || index % 5 == 1
        post.title = 'SPAM'
      end
    end

  end

  def show
  end

  def new
  end

  def edit
  end
end
