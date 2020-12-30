class RoutinesController < ApplicationController
    
    def index
        routines = Routine.all
        render json: routines, include: 'workout_routine_objs'
    end

    def show
        routine = Routine.find(params[:id])
        render json: routine
    end

    def create
        routine = Routine.create(routine_params)
        render json: routine

        # To be consumed in the front-end like so:
        # fetch('http://localhost:3000/routines', {
        #     method:"POST",
        #     headers: {
        #         "content-type":"application/json",
        #         "Accepts":"application/json"
        #     },
        #     body: JSON.stringify({
        #             routine: {
        #               user_id: 5,
        #               name: 'getting Fat',
        #               difficulty: 3
        #         }
        #     })
        # })
        # .then(r=>r.json())
        # .then(console.log)
    end

    def update
        routine = Routine.find(params[:id])
        routine.update(routine_update_params)
        render json: routine

        # To be consumed in the front-end like so:
        # fetch('http://localhost:3000/routines/6', {
        #     method:"PUT",
        #     headers: {
        #         "content-type":"application/json",
        #         "Accepts":"application/json"
        #     },
        #     body: JSON.stringify({
        #             routine: {
        #             name: 'getting Fat',
        #             difficulty: 3
        #         }
        #     })
        # })
        # .then(r=>r.json())
        # .then(console.log)
    end

    def destroy
        routine = Routine.find(params[:id])
        routine.destroy()
        render json: routine
    end
    
    private

    def routine_params
        params.require(:routine).permit(:name, :user_id, :difficulty)
    end

    def routine_update_params
        params.require(:routine).permit(:name, :difficulty)
    end
end
