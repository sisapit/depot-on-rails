class LineItemsController < ApplicationController
  include CurrentCart
  # Declare that the set_cart() method is to be involved before the create() action.
  before_action :set_cart, only: [:create]
  before_action :set_line_item, only: %i[ show edit update destroy ]

  # GET /line_items or /line_items.json
  def index
    @line_items = LineItem.all
  end

  # GET /line_items/1 or /line_items/1.json
  def show
  end

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_items/1/edit
  def edit
  end

  # POST /line_items or /line_items.json
  def create
    # Use the params object to get the :product_id parameter from the request.
    # Variable p is a local variable instead of an instance variable, because there's no need to make it available to the view.
    p = Product.find(params[:product_id])
    # Build a new line item relationship between the @cart object and the product.
    # Nite: You can build the relationship from either end, and Rails takes care of establishing the connections on both sides.
    @line_item = @cart.add_product(p)
    session[:counter] = 0

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to cart_url(@line_item.cart), notice: "Line item was successfully added to your cart." }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /line_items/1 or /line_items/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to line_item_url(@line_item), notice: "Line item was successfully updated." }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_items/1 or /line_items/1.json
  def destroy
    @line_item.destroy

    respond_to do |format|
      format.html { redirect_to line_items_url, notice: "Line item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:product_id, :cart_id)
    end
end
