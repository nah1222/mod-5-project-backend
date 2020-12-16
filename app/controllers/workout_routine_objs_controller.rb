class WorkoutRoutineObjsController < ApplicationController

    def index
        workout_routine_objs = WorkoutRoutineObj.all
        render json: workout_routine_objs
    end

    def show
        workout_routine_obj = WorkoutRoutineObj.find(params[:id])
        render json: workout_routine_obj
    end

    def create
        workout_routine_obj = WorkoutRoutineObj.create(workout_routine_obj_params)
        render json: workout_routine_obj
    end

    def update
        workout_routine_obj = WorkoutRoutineObj.find(params[:id])
        workout_routine_obj.update(wro_update_params)
        render json: workout_routine_obj
    end

    def destroy
        workout_routine_obj = WorkoutRoutineObj.find(params[:id])
        workout_routine_obj.destroy
    end

    private

    def workout_routine_obj_params
        params.require(:workout_routine_obj).permit(:routine_id, :reps, :workout_id)
    end

    def wro_update_params
        params.require(:workout_routine_obj).permit(:reps)
    end

end
