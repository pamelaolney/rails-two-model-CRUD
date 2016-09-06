class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render :json => @categories
  end

  def show
    @category = Category.find(params[:id])
    render :json => @category    
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)
    if @category.save(category_params)
      flash[:notice] = "The category #{@category.name} has successfully been created."
      redirect_to @category
      render json: {success: true}, status: :ok
    else
      @category.errors.full_messages
      flash.now[:notice] = "Must apply an image to create category.  Come on now!"
      render :new
    end
  end



  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    @category.update(category_params)
    redirect_to @category
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to @category
  end

  private

  def category_params
    params.require(:category).permit(:name, :image_url)
  end

end
