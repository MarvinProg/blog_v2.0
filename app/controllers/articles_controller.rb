class ArticlesController < ApplicationController
  def index 
    @article = Article.all
  end 

  def new 
  end

  def show 
    @article = Article.find(params[:id])
  end

  def create 
    @article = Article.new(params_article)
    # if @article.valid?
    if @article.save
      redirect_to @article
      # render @article
    else 
      # render "new"
      render action: "new"
    end

    # render plain: params[:article].inspect
  end

  def edit 
    @article = Article.find(params[:id])
  end

  def update 
    @article = Article.new(params_article)
    # if @article.valid?
    if @article.update(params_article)
      redirect_to @article
      # render @article
    else 
      # render "new"
      render action: "edit"
    end
  end

  private

  def params_article 
    params.require(:article).permit(:title, :text)
  end
end
