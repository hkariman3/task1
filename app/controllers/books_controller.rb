class BooksController < ApplicationController
  def index
    @list=Book.new
    @lists=Book.all

  end

  def create
    @list=Book.new(list_params)
    if @list.save
    redirect_to book_path(@list.id)
   flash[:notice] = "Book was successfully created."
    else
    @lists=Book.all
    render :index
    end
  end
  def show
    @list=Book.find(params[:id])
  end

  def edit
    @list=Book.find(params[:id])
  end

  def update
    @list=Book.find(params[:id])
    if @list.update(list_params)
    redirect_to book_path(@list.id)
    flash[:notice] = "Book was successfully updated."
    else
    render :edit
    end
  end

  def destroy
    list = Book.find(params[:id])
    list.destroy
    redirect_to books_path
    flash[:notice] = "Book was successfully destroyed."
  end
  private
  def list_params
    params.require(:book).permit(:title,:body)
  end
end
