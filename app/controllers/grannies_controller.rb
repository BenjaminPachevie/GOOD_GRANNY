class GranniesController < ApplicationController

  def index
    @grannies = Granny.all
  end

  def show
    @granny = Granny.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @granny = Granny.new
    @granny.build_categories
  end

  def create
    @granny = Granny.new(granny_params)
    @granny.user = current_user
    if @granny.save
      redirect_to granny_path(@granny)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @granny = Granny.find(params[:id])

  end

  def update
    @granny = Granny.find(params[:id])
    @granny.update(granny_params)
    if @granny.save
      redirect_to granny_path(@granny)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @granny = Granny.find(params[:id])
    @granny.destroy
    redirect_to grannies_path
  end

  private

  def granny_params
    params.required(:granny).permit(:name, :presentation, :location,
                                    categories_attributes: %i[name specialty],
                                    photos: [])
  end
end
