class CategoriesController < ApplicationController
  layout 'admin'
  before_action :admin_user
  before_action :logged_in_user

  def index
    @categories = Category.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def update
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "Thêm thành công"
      redirect_to categories_url
    else
      flash[:danger] = "Thêm không thành công"
      redirect_to categories_url
    end
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end
end
