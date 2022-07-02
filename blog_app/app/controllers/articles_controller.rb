class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html {redirect_to articles_path, notice: "Successfully create entry" }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end

    # if @article.save
    #   redirect_to articles_path
    # else
    #   render :new
    # end
  end

  def show
    @article = Article.find(params["id"])
  end

  def edit

  end

  def update
    
  end

  def delete

  end

  def add_like
    @article = Article.find(params[:id])
    @article.likes += 1
    @article.save
  end

  private

  def article_params
    params.require(:article).permit(:name, :body)
  end

end
