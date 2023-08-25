class ReservationsController < ApplicationController

  def index
    @user = current_user
    @reservations = Reservation.all
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @granny = Granny.find(params[:granny_id])
    @reservation.user = current_user
    @reservation.granny = @granny
    if @reservation.save
      redirect_to profile_path(current_user)
    else
      render 'grannies/show', status: :unprocessable_entity
    end
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to profile_path(current_user)
    else
      render 'grannies/show', status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to profile_path(current_user)
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :granny_id, :user_id, :total_price, :status, :category_booked)
  end
end
