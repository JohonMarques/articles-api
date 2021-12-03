module Api
  module V1
    class ArticlesController < ApplicationController
      def index
        articles = Article.all
        render json: articles
      end

      def show
        article = Article.find(params[:id])
        render json: { message: 'Article Founded', data: article }, status: :ok
      end

      def create
        article = Article.new(article_params)
        if article.save
          render json: { message: 'Article Added', data: article }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Failed to add article', data: article.err },
                 status: :unprocessable_entity
        end
      end

      def update
        article = Article.find(params[:id])
        if article.update(article_params)
          render json: { message: 'Article updated', data: article }, status: :ok
        else
          render json: { status: 'ERROR', message: 'article can not be updated', data: article },
                 status: :unprocessable_entity
        end
      end

      def destroy
        article = Article.find(params[:id])
        article.destroy
        render json: { message: 'article deleted.', data: article }, status: :ok
      end

      private

      def article_params
        params.permit(:featured, :title, :url, :imageUrl, :newSite, :summary, :publishedAt)
      end
    end
  end
end
