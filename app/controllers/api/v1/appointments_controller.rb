class Api::V1::AppointmentsController <ApplicationController
    def index
        appointments = Appointment.all
        render json: appointments
    end

    def new
        appointment = Appointment.new
        render json: appointment
    end

    def show
        appointment = Appointment.find(params[:id])
        render json: appointment
    end

    def create
        appointment = Appointment.create!(appointment_params)
        render json: appointment
    end

    def destroy 
        appointment = Appointment.find(params[:id])
        appointment.destroy!
        render json: {}
    end

    def update
        appointment = Appointment.find(params[:id])
        appointment.update!(appointment_params)
        render json: appointment
    end

    private

    def appointment_params
        params.permit(:time, :date, :dog_id)
    end





end