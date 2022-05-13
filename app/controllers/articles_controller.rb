class ArticlesController < ApplicationController
  def index 
  end 

  def new 
  end

  def show 
  end

  def create 
    @article = Article.new(params_article)
    if @article.valid?
      @article.save
      redirect_to @article
    else 
      # render "new"
      render action: "new"
    end

    # render plain: params[:article].inspect
  end

  private

  def params_article 
    params.require(:article).permit(:title, :text)
  end
end
