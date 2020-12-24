class ReviewsController < ApplicationController
    before_action :find_review, only: [:show, :edit, :update, :destroy]

    def index
        @review = Review.all
    end
    
    def show
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
    end
    
    def update
        if @review.update(review_params) 
        redirect_to review_path(@review)
        else
        render :edit
        end
    end
    
    def destroy
        if @review
        @review.destroy
        redirect_to reviews_path
        end
    end

    def five_star_rating
        @review = Review.five_star_rating
        render :index
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
