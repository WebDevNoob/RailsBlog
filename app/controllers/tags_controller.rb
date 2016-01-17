class TagsController < ApplicationController

def index
    @tag = Tag.all
    @article = Article.all
end
def show
  @tag = Tag.find(params[:id])
end

def destroy
  @article = Article.find(params[:article_id])
  @tag = @article.tags.find(params[:id])
  @tag.destroy
  redirect_to articles_path
end

end
