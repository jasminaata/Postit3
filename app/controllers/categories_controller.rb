class CategoriesController < ApplicationController
    def show
        @category = Category.find(params[:id])
        @postspag = @category.posts.page(params[:page]).per(10)

	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @category, posts: @postspag }
	    end
    end
end
