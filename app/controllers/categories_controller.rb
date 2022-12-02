class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end
 
  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Object successfully created"
      redirect_to @category
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def show
    @category = Category.find_by id: params[:id]
  end
  
  private

  def category_params
    params.require(:category).permit(:title, :body)
  end
end
