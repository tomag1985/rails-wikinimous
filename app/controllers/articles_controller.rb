class ArticlesController < ApplicationController
	
	def index
		@articles = Article.all
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params).save
		redirect_to articles_path
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end

	private

	def article_params
		params.require(:article).permit(:title, :content)
	end
end
