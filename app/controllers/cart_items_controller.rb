class CartItemsController < ApplicationController
  	before_action :set_cart_item, only: [:show, :edit, :update, :destroy]
	#before_action :authenticate_user!
  
  # GET /cart_items
  # GET /cart_items.json
  def index
    @cart_items = CartItem.all
  end

  # GET /cart_items/1
  # GET /cart_items/1.json
  def show
  	@product_id = params[:product_id]
  	@product_title = Product.find_by(id:@cart_item.product_id).title
  	@product_price = Product.find_by(id:@cart_item.product_id).price
  end

  # GET /cart_items/new
  def new
    @cart_item = CartItem.new
    @product_id = params[:product_id]
    @product_title = Product.find_by(id:@product_id).title
    @product_description = Product.find_by(id:@product_id).description
  	@product_price = Product.find_by(id:@product_id).price
  end

  # GET /cart_items/1/edit
  def edit
  end

  # POST /cart_items
  # POST /cart_items.json
  def create
  
    @cart_item = CartItem.new(cart_item_params)
	@product = Product.find_by(id:@cart_item.product_id);
	
    #respond_to do |format|
      if @cart_item.save     	 
      	redirect_to @cart_item.paypal_url(cart_item_path(@cart_item), @product)
        #format.html { redirect_to @cart_item, notice: 'Cart item was successfully created.' }
        #format.json { render :show, status: :created, location: @cart_item }
      else
        format.html { render :new }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    #end
  end

  
  protect_from_forgery except: [:hook]
  def hook
    params.permit! # Permit all Paypal input params
    status = params[:payment_status]
    if status == "Completed"
      @cart_item = CartItem.find params[:invoice]
      @cart_item.update_attributes notification_params: params, status: status, transaction_id: params[:txn_id], purchased_at: Time.now
    end
    render nothing: true
  end


  # PATCH/PUT /cart_items/1
  # PATCH/PUT /cart_items/1.json
  def update
    respond_to do |format|
      if @cart_item.update(cart_item_params)
        format.html { redirect_to @cart_item, notice: 'Cart item was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart_item }
      else
        format.html { render :edit }
        format.json { render json: @cart_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cart_items/1
  # DELETE /cart_items/1.json
  def destroy
    @cart_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_items_url, notice: 'Cart item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart_item
      @cart_item = CartItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_item_params
      params.require(:cart_item).permit(:product_id, :user_id, :quantity, :purchased_at)
    end
end
