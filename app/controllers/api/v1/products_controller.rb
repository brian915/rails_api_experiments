module Api
  module V1
    class ProductsController < ApplicationController
      respond_to :json

      def index
        respond_with Product.all
      end

      def show
        respond_with Product.find(params[:id])
      end

      def create
        respond_with Product.create(params[:product])
      end

      def update
        respond_with Product.update(params[:id], params[:products])
      end

      def destroy
        respond_with Product.destroy(params[:id])
      end

      private
      def product_params
        params.require(:product).permit(:title,:price,:published)
      end

    end
  end
end
