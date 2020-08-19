class ReviewsController < ApplicationController

    def index
        @review = Review.all
    end
    
    def show
        find_review
    end
    
    def new
        @review = Review.new
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save
        redirect_to reviews_path
        else
        render :new
        end
    end
    
    def edit
        find_review
    end
    
    def update
        find_review
        if @review.update(review_params)
        redirect_to review_path(@review)
        else
        render :edit
        end
    end
    
    def destroy
        if find_review
        @review.destroy
        redirect_to reviews_path
        end
    end
    
    private
    
    def find_review
        @review = Review.find(params[:id])
    end
        
    def review_params
        params.require(:review).permit(:title, :detail, :rating, :recommend)
    end
    
end
