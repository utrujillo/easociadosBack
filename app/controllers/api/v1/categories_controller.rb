module Api
  module V1

    class CategoriesController < ApplicationController
      before_action :authorized, only: [:create, :update, :destroy]
      before_action :set_category, only: [:show, :update, :destroy]

      # GET /categories
      def index
        @categories = Category.is_visible

        render json: @categories
      end

      # GET /categories/1
      def show
        render json: @category
      end

      # POST /categories
      def create
        @category = Category.new(category_params)

        if @category.save
          render json: @category, status: :created
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /categories/1
      def update
        if @category.update(category_params)
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      # DELETE /categories/1
      def destroy
        if @category.update({ "visible": false })
          render json: @category
        else
          render json: @category.errors, status: :unprocessable_entity
        end
      end

      private
        # Use callbacks to share common setup or constraints between actions.
        def set_category
          @category = Category.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def category_params
          params.require(:category).permit(:nombre, :descripcion, :visible)
        end
    end

  end
end
