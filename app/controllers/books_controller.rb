class BooksController < ApplicationController
    def index
    end
    
    def new
        @book = Book.new
    end
    
    def create
        @book = Book.new(book_params)
    end
    
    private 
        def book_params
            params.require(:book).permit(:title, :description, :author)
        end
end
