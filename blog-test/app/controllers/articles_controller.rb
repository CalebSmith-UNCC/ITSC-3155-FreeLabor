class ArticlesController < ApplicationController
    def new
        @article = Article.new
    end 
    
    def index
        @articles = Article.all
        if params[:text]
            @articles = Article.where("text LIKE ? OR title LIKE ?", "%#{params[:text]}%", "%#{params[:text]}%")
        elsif params[:order]
            @articles = Article.order('title ASC')
        end
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
    def create
        @article = Article.new(article_params)
        @article.user = current_user
        
        if @article.save
            redirect_to @article
        else
            render 'new'
        end
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
       @article = Article.find(params[:id]) 
       
       if @article.update(article_params)
           redirect_to @article
       else 
           render 'edit'
       end 
    end
    
    def destroy
        @article = Article.find(params[:id]) 
        @article.destroy
        
        redirect_to articles_path
    end

private
    def article_params
        params.require(:article).permit(:title, :text)
    end


end
