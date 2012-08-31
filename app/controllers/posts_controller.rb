class PostsController < ApplicationController
    before_filter :get_post, :except => [ :index, :not_found ]
    before_filter :check_post, :except => [ :not_found ]

    def index
        @posts = Post.all
    end

    def view
    end

    def not_found
    end

    protected

    def get_post
        if not params[:post_id].nil? then
            @post = Post.find_by_id params[:post_id]
        elsif not params[:title].nil? then
            @post = Post.find_by_title params[:post_title]
        else
            @post = nil
        end
    end

    def check_post
        if @post.nil? then
            flash[:error] = "Post not found"
            redirect_to :action => :not_found
        end
    end
end
