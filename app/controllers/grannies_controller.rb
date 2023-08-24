class GranniesController < ApplicationController

  def index
    if params[:query].present?
      @categories = Category.global_search(params[:query])
      @grannies = Granny.where(categories: @categories)
    else
      @grannies = Granny.all
    end

    @markers = @grannies.geocoded.map do |granny|
      {
        lat: granny.latitude,
        lng: granny.longitude,
        marker_html: render_to_string(partial: "marker")
        # info_window_html: render_to_string(partial: "info_window", locals: {granny: granny})

      }
    end
  end

  def show
    @granny = Granny.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @granny = Granny.new
    # @granny.categories.pluck
  end

  def create
    @granny = Granny.new(granny_params)

    @granny.user = current_user

    if @granny.save!
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
    redirect_to profile_path(current_user)
  end

  private

  def granny_params
    params.required(:granny).permit(:name, :presentation, :location, :price,
                                    photos: [], categories_attributes: %i[name specialty id])
  end
end
