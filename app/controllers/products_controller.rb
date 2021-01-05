class ProductsController < ApplicationController
  def index
    #product_path(product)
    @products = Product.all()
  end

  def show
    #The product is a resource, aka an object of the model
    # @ is a prefix for the variable of this class 'ProductController', this is Perl in disguise
    # in html, with the get path: <a href="<%= product_path(product) %>">
    @product = Product.find(params[:id])
  end
  #get
  def new
    @product = Product.new
  end
  #post
  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product
    else
      render :new
    end
  end
  #Both functions must be here, else, the sistem fails
  #one is for getting things ready and validating,
  #the other actually saves the changes
  #get
  def edit
    @product = Product.find(params[:id])
  end
  #patch, put
  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to root_path
  end
  
  private
  #This takes the form values
    def product_params
      params.require(:product).permit(:name,:quantity,:price)
    end

end