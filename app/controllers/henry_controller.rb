class HenryController < ApplicationController
    def new
    end

    def create
        @henry = Henry.new(article_params)
        @henry.save
        redirect_to @henry
    end

    def index
        @all = Henry.all
    end


    def show
      @henry =  Henry.find(params[:id])
    end

    def edit
         @henry =  Henry.find(params[:id])
     end
     def update
        @henry = Henry.find(params[:id])

    if @henry.update(article_params)
        redirect_to @henry
    else
        render 'edit'
    end
     end

    private
    def article_params
        params.require(:henry).permit(:nome)
    end
end
