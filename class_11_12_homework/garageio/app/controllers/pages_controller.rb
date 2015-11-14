class PagesController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    def show
      @car = Car.new
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @car = Car.find(params[:id])
    respond_to do |format|
      if @car.update(car)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end

  def destroy
  @car = Car.find(params[:id])
  @car.destroy
  redirect_to products_url, notice: 'Car was successfully destroyed.'
  end
end
