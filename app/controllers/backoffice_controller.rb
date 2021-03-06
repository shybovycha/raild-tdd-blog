class BackofficeController < ApplicationController
    before_filter :get_post, :except => [ :index ]

    def index
        @posts = Post.all
    end

    def edit_post
    end

    def delete_post
        @post.destroy

        redirect_to request.referer
    end

    def save_post
        
    end

    protected
    
    def get_post
        if not params[:post_id].nil? then
            @post = Post.find_by_id params[:post_id]
        else
            flash[:error] = "Post not found"
            redirect :action => :index
        end
    end
end
