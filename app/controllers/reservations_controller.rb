class ReservationsController < ApplicationController

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @granny = Granny.find[params[:granny_id]]
    @reservation.granny = @granny
    if @reservation.save
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
    params.require(:reservation).permit(:date, :category_booked)
  end
end
