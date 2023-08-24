class PagesController < ApplicationController
  def home
  end

  def profile
    @user = User.find(params[:id])
    @my_reservations = Reservation.where(granny: current_user.grannies)
  end
end
