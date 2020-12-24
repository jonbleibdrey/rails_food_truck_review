class FoodTrucksController < ApplicationController
    helper_method :has_permission
    before_action :find_food_truck, only: [:show, :edit, :update, :destroy]

    def index
        @foodtruck = FoodTruck.all
    end

    def show
    end
    
    def new
        @foodtruck = FoodTruck.new
    end
    
    def create
        @foodtruck = FoodTruck.new(food_truck_params)
        if @foodtruck.save
        redirect_to food_trucks_path
        else
        render :new
        end
    end
    
    def edit
    end
    
    def update
        if @foodtruck.update(food_truck_params)
        redirect_to food_truck_path(@foodtruck)
        else
        render :edit
        end
    end
    
    def destroy
        if @foodtruck
        @foodtruck.destroy
        redirect_to food_trucks_path
        end
    end


    def mexican
        @category = FoodTruck.mexican
        render :category
    end

    def italian
        @category = FoodTruck.italian
        render :category
    end
    
    def american
        @category = FoodTruck.american
        render :category
    end


    private

    def find_food_truck
     @foodtruck = FoodTruck.find(params[:id])
    end
    
    def food_truck_params
        params.require(:food_truck).permit(:name, :category, :phone, :current_location, :user_id)
    end

    def has_permission
        if find_food_truck
            @foodtruck.owner == current_user
        end
    end


end
