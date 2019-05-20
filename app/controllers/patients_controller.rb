class PatientsController < ApplicationController 

    def index
        @patients =Patient.all
    end
    def new
        @patient =Patient.new
    end
    def show
        @patient = Patient.find(params[:id])
    end
    def create
        @patient = Patient.create(patient_params)
        redirect_to patients_path(@patient)
    end

    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy
        
        redirect_to patients_path
    end


    def patient_params
        params.require(:patient).permit(:first_name, :last_name , :diagnosis , :born_on)
     end
end