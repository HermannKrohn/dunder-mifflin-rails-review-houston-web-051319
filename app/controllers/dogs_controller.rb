class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def edit
        @dog = Dog.find(params[:id])
        @employees = Employee.all
    end

    def new

    end

    def update
        # byebug
        @dog = Dog.find(params[:id])
        @dog.update(dog_params[:dog])
        redirect_to dogs_path
    end

    def create

    end

    def show 
        @dog = Dog.find(params[:id])
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
    end

    def dog_params
        params.permit(
            
            dog: [
                :name,
                :breed,
                :age,
                employee_ids: []
            ]
            
        )
    end
end
