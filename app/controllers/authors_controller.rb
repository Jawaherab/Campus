
class AuthorsController < ApplicationController 

    def index
        @authors=Author.all
     end

    def show
        @author = Author.find(params[:id])
    end

    def new
        @author = Author.new
     end
     def create
        @author = Author.create(author_params)
        redirect_to authors_path(@author)
     end

     def destroy
        @author = Author.find(params[:id])
        @author.destroy
        
        redirect_to authors_path
     end


     def edit
        @author = Author.find(params[:id])
     end

     def update
        @author = Author.find(params[:id])
        @author.update(author_params)
        redirect_to authors_path(@author)
        
     end

     def author_params
        params.require(:author).permit(:First_name, :Last_name ,:nickname , :hometown , :age)
     end

end