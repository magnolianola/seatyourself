class ReservationsController < ApplicationController
  before_filter :ensure_logged_in, :only => [:show, :new, :edit, :create, :update, :destroy]
  before_filter :load_restaurant

  def index
  	@reservations = Reservation.all
  end

  def show
  	@reservation = Reservation.find(params[:id])
  end

  def new
  	@reservation = Reservation.new
  end

  def edit
  	   @reservation = Reservation.find(params[:id])
  end

  def create
  	@reservation = @restaurant.reservations.build(reservation_params)

  	if @reservation.save
  		redirect_to restaurant_reservations_path(@restaurant)

  	else
  		render :new
  	end
  end

  def update
  	@reservation = Reservation.find(params[:id])

  	if @reservation.update_attributes(reservation_params)
  		redirect_to reservation_path(@reservation)
  	else
  		render :edit
  	end
  end

  def destroy
  	@reservation = Reservation.find(params[:id])
  	@reservation.destroy
  	redirect_to reservations_path
  end

  private

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservation_params
    params.require(:reservation).permit(:name, :booking_time, :created_at, :updated_at)
  end
  # def booking_time_params
  #   params.require(:booking_time).permit(:datetime)
  # end
end
