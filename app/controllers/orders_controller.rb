#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#
class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # Track the seller sales and sorted by the time it was created
  def sales
    @orders = Order.all.where(seller: current_user).order("created_at DESC")
  end
  # Track the current user who is a buyer's purchases and sorted by time it
  # was created.
  def purchases
    @orders = Order.all.where(buyer: current_user).order("created_at DESC")
  end

  # GET /orders
  # GET /orders.json. All the order
  def index
    # diplaye all orders
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    #new order
    @order = Order.new
    # All the parameters a book instance has
    @book = Book.find(params[:book_id])
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    #creates a new order instance with the parameters
    @order = Order.new(order_params)
    @book = Book.find(params[:book_id])
    # assigning a user to a seller
    @seller = @book.user
    #assigning book id to order book_id
    @order.book_id = @book.id
    @order.buyer_id = current_user.id
    @order.seller_id = @seller.id

    respond_to do |format|

      if @order.save
        format.html { redirect_to root_url, notice: 'Thank you for ordering.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  # def update
  #   respond_to do |format|
  #     if @order.update(order_params)
  #       format.html { redirect_to @order, notice: 'Order was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @order }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @order.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /orders/1
  # # DELETE /orders/1.json
  # def destroy
  #   @order.destroy
  #   respond_to do |format|
  #     format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:address, :city, :state)
    end
end
