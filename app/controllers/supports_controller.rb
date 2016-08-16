class SupportsController < ApplicationController

  before_action :find_params, only: [:show, :edit, :destroy, :update]

  def index
    @supports = Support.new

  end
def shows
  @supports2 = Support.search(params[:keyword])
@supports = @supports2.order(created_at: :desc).
                                  page(params[:page]).
                                  per(5)

end
  def new

  end

  def create
    @supports = Support.new supports_params

    if @supports.save
      redirect_to supports_path, notice:"post successfully created"
    else
      flash[:alert] = "please enter corect data "
      render :new
    end
  end

  def show
    @supports = Support.find find_params
  end

  def edit

  end

  def update
    if @supports.update supports_params
      redirect_to shows_path
            flash[:alert]= "masssage successfully edited"
    else
      flash[:alert]= "please enter correct data"
      render :edit
    end

  end

  def destroy
  @supports.destroy
      redirect_to shows_path
      flash[:alert]= "Messsage successfully deleted"
    end
 
private

      def find_params
          @supports = Support.find params[:id]
      end

      def supports_params
          params.require(:support).permit([:name, :email, :department, :message, :mark])
      end
    end
