class WorkoutsController < ApplicationController

    def index
        workouts = Workout.all
        render json: workouts
    end

    def show
        workout = Workout.find(params[:id])
        render json: workout
    end

    def create
        workout = Workout.create(workout_params)
        render json: workout
    end

    def update
        workout = Workout.find(params[:id])
        workout.update(workout_params)
        render json: workout
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :description, :image, :video_url)
    end
end
