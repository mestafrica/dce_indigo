class ProductsController < ApplicationController
  def index
  	@products = Product.all
  end

  def new
  	@products = Product.new
  end

  def create
  	 @product = Product.new(product_params)
      
      if @product.save
         redirect_to products_path, notice: "The Product table of #{@product.company} has been uploaded."
      else
        #render "new"
        redirect_to products_path, notice: "Error: Please try again and make sure to upload a .csv file"
         
      end
  end

  def destroy
  	  @product = Product.find(params[:id])
      @product.destroy
      redirect_to products_path, notice:  "The Product table of #{@product.company} has been deleted."
  end

  def upload_product_csv
    #render plain: 2 + 4
  end

  private
  
  def product_params
      params.require(:product).permit(:company, :product_table)
  end 
   
end
