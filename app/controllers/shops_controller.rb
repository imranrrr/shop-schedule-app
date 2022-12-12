class ShopsController < ApplicationController
  before_action :set_shop, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, only: %i[create update destroy new]

  # GET /shops or /shops.json
  def index
    @shops = Shop.all
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def edit
  end

  def create
    @shop = Shop.new(shop_params)

    respond_to do |format|
      if @shop.save
        format.html { redirect_to shop_url(@shop), notice: "Shop was successfully created." }
        format.json { render :show, status: :created, location: @shop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shop.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
      respond_to do |format|
        if @shop.update(shop_params)
          format.html { redirect_to shop_url(@shop), notice: "Shop was successfully updated." }
          format.json { render :show, status: :ok, location: @shop }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @shop.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @shop.destroy

    respond_to do |format|
      format.html { redirect_to shops_url, notice: "Shop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name)
    end
end
