class ExercisesController < ApplicationController
    def index
        @exercises = Exercise.all
        render json: @exercises
    end

    def create
        @exercise = Exercise.new(exercise_params)
        if @exercise.save
            render json: @exercise
        else 
            render josn: {error: "Error creating new exercise"}
        end
    end

    def show
        @exercise = Exercise.find(params[:id])
        render json: @exercise
    end

    private

    def exercise_params
        params.require(:exercise).permit(:type, :minutes, :day_id)
    end
end
