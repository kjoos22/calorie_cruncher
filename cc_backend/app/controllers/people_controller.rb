class PeopleController < ApplicationController

    def index
        @people = Person.all
        render json: @people
    end

    def create
        @person = Person.new(person_params)
        if @person.save
            render json: @person
        else 
            render josn: {error: "Error creating new person"}
        end
    end

    def show
        @person = Person.find(params[:id])
        render json: @person
    end

    private

    def person_params
        params.require(:person).permit(:name, :inches, :age, :gender)
    end
end
