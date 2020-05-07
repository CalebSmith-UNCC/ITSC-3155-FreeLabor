class LikesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :find_article
    
    def create
        @article = Article.find(params[:article_id])
        @article.likes.create(user_id: current_user)
        redirect_to article_path(@article)
    end  
    
    private  
        def find_article
            @article = Article.find(params[:article_id])
        end
end
