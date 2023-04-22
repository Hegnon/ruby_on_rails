class ArticlesController < ApplicationController
  

  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1 or /articles/1.json
  def show
    @article = Article.find(params[:id])
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
  end

  # POST /articles or /articles.json
  def create
    @article = Article.new(article_params)

    
    if @article.save
      redirect_to @article      
    else
      render :new, status: :unprocessable_entity   
    end
  end


  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article      
    else
      render :edit, status: :unprocessable_entity   
    end
  end
      
    
  # DELETE /articles/1 or /articles/1.json
  def destroy
    @article = Article.find(params[:id])  
    @article.destroy    
  end

  private
      
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
