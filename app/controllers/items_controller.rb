class ItemsController < ApplicationController

  def index
    #@items = Item.all
    @pagy, @items = pagy_countless(Item.order(created_at: :desc), items: 36)
    respond_to do |format|
      format.html #GET
      format.turbo_stream #POST
    end
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find_by id: params[:id]
  end
  
  def update
    @item = Item.find_by id: params[:id]
    if @item.update item_params
      redirect_to root_path
    else
      render :edit
    end
  end

  def delete
  end

  def create
    @item = current_user.items.build item_params
    if @item.save
      flash[:success] = "Object successfully created"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
    @item = Item.find_by id: params[:id]
    @subcat = @item.subcat
    @category = @subcat.category
  end
  
  private

  def item_params
    params.require(:item).permit(:title, :body, :price, :category_id, :subcat_id)
  end

end