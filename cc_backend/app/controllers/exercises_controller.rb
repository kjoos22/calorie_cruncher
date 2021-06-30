class ExercisesController < ApplicationController

    before_action :set_day

    def index
        @exercises = @day.exercises
        render json: @exercises
    end

    def create
        @exercise = @person.exercises.new(exercise_params)
        @day.update_calories_expended(@exercise)
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

    def set_day
        @day = Day.find(params[:day_id])
    end

    def exercise_params
        params.require(:exercise).permit(:type, :minutes, :day_id)
    end
end
