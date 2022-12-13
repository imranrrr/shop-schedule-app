class ShopSchedulesController < ApplicationController
  before_action :set_shop_schedule, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, only: %i[update destroy create new]
  
  def index
    @shop_schedules = ShopSchedule.all
  end

 
  def show
  end

  def new
    @shops = Shop.all
    @shop_schedule = ShopSchedule.new
  end

  def edit
    @shops = Shop.all
  end

  def create
    @shop_schedule = ShopSchedule.new(shop_schedule_params)
    shop_id = shop_schedule_params[:shop_id]
    respond_to do |format|
      if @shop_schedule.save
        format.html { redirect_to shop_path(shop_id), notice: "Shop schedule was successfully created." }
        format.json { render :show, status: :created, location: @shop_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shop_schedule.update(shop_schedule_params)
        format.html { redirect_to shop_schedule_url(@shop_schedule), notice: "Shop schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @shop_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shop_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shop_schedule.destroy

    respond_to do |format|
      format.html { redirect_to shop_schedules_url, notice: "Shop schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_shop_schedule
      @shop_schedule = ShopSchedule.find(params[:id])
    end

    def shop_schedule_params
      params.require(:shop_schedule).permit(:day, :opening_time, :half_time, :open_after_half_time, :closing_time, :day_status, :shop_id)
    end
end
