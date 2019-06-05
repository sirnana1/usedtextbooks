#   Nana Asiedu-Ansah
#   Muhlenberg College
#   CSI 370
#   Spring 2019 CUE
#

class BooksController < ApplicationController
  #These actions are only available to users
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  #These action are available to authenticate users
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  #before_action :admin_user,     only: :destroy
  # GET /books
  # GET /books.json

  # Where the current user is the seller and it is sorted in desending order
  def seller
    @books = Book.where(user: current_user).order("created_at DESC")
  end

  def index
    #calculates the number of pages and displays only 4 pages
    # and sorted by title
    @books = Book.paginate(page: params[:page], per_page: 4).order("title")

  end

  # GET /books/1
  # GET /books/1.json
  def show
  #    @book = Book.find(params[:id])
  #    @books = Book.all.order("title")
   end

  # GET /books/new creating a new book
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, success: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, success:  'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, success: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :subject,:author, :description, :publisher, :isbn, :year, :price)
    end

   def check_user
     if current_user != @book.user
       redirect_to root_url, alert: " Sorry you do not have the right privileges. "
   end
 end
end
