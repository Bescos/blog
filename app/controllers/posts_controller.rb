class PostsController < ApplicationController
    def index
        @posts = Post.all
        @max_comm = Post.most_commented
    end

    def new
        @max_comm = Post.most_commented
    end

    def create
        post = Post.new(params[:post])
        post.save
        redirect_to(posts_path)
    end

    def edit
        @post = Post.find_by_id(params[:id])
        @max_comm = Post.most_commented
    end

    def update
        @post = Post.find_by_id(params[:id])
        @post.update_attributes(params[:post])
        redirect_to(posts_path)
    end

    def show
        @post = Post.find_by_id(params[:id])
        @max_comm = Post.most_commented
    end

    def destroy
        @post = Post.find_by_id(params[:id])
        @post.destroy
        redirect_to(posts_path);
    end

    def search
        @max_comm = Post.most_commented
    end

    def research
        @posts = Post.search(params[:post][:search])
        @max_comm = Post.most_commented
    end
end
