class SubcatsController < ApplicationController

  def index
    @subcats = Subcat.all
  end

  def edit
    @item = item.find_by id: params[:id]
  end
  

  def new
    @subcat = Subcat.new
  end
 
  def create
    @subcat = Subcat.new subcat_params
    if @subcat.save
      flash[:success] = "Object successfully created"
      redirect_to @subcat
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  def show
    @subcat = Subcat.find_by id: params[:id]
  end
  
  private

  def subcat_params
    params.require(:subcat).permit(:title, :body)
  end
end
