class ReviewsController < ApplicationController

    def index
        @review = Review.all
    end
    
    def show
        find_review
    end
    
    def new
        @review = Review.new
        @foodtruck = FoodTruck.find_by_id(params[:food_truck_id])
    end
    
    def create
        @review = current_user.reviews.build(review_params) 
        if @review.save
        redirect_to review_path(@review)
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
        params.require(:review).permit(:title, :detail, :rating, :recommend, :food_truck_id)
    end

    def find_food_truck
    @foodtruck = FoodTruck.find(params[:id])
    end
    
end
