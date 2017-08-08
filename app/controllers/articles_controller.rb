class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    set_article
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    set_article
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    set_article
    @article.update(article_params)
    @article.save
    redirect_to articles_path
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    set_article
    @article.destroy
    redirect_to articles_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :content)
    end
end
