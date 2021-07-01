class DaysController < ApplicationController

    before_action :set_person

    def index
        @days = @person.days
        render json: @days
    end

    def create
        @day = @person.days.new(day_params)
        @day.calories_expended = 0
        @day.set_variables()
        if @day.save
            render json: @day
        else 
            render josn: {error: "Error creating new day"}
        end
    end

    def show
        @day = Day.find(params[:id])
        render json: @day
    end

    private

    def set_person
        @person = Person.find(params[:person_id])
    end

    def day_params
        params.require(:day).permit(:person_id, :date, :pounds, :bmr, :tef,
                                       :tdee, :calories_expended)
    end
end
