class FoodTrucksController < ApplicationController

    def index
        @foodtruck = FoodTruck.all
    end

    def show
        find_food_truck
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
        find_food_truck
    end

    def update
        find_food_truck
        if @foodtruck.update(food_truck_params)
        redirect_to food_truck_path(@foodtruck)
        else
        render :edit
        end
    end

    def destroy
        if find_food_truck
            @foodtruck.destroy
            redirect_to food_trucks_path
        end
    end

    private

    def find_food_truck
     @foodtruck = FoodTruck.find(params[:id])
    end
    
    def food_truck_params
        params.require(:food_truck).permit(:name, :category, :phone)
    end



end
