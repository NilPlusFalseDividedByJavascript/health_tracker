class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]


  def dashboard
    @steps_traveled = Step.total
    @weight_count = Weight.total
    @calorie_dif = ConsumedCal.total - Excercise.total
    @cal_total = ConsumedCal.total
    @cal_burn = Excercise.total
  end

  def index
    @weight = Weight.all
  end

  def show
  end

  def create
    @weight = Weight.new(weight_params)

    respond_to do |format|
      if @weight.save
        format.html { redirect_to @weight, notice: 'Weight was successfully created.' }
        format.json { render :show, status: :created, location: @weight }
      else
        format.html { render :new }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end


  def new
    @weight = Weight.new
  end


  def edit
  end

  def update
    respond_to do |format|
      if @weight.update(weight_params)
        format.html { redirect_to @weight, notice: 'Weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight }
      else
        format.html { render :edit }
        format.json { render json: @weight.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @weight.destroy
    respond_to do |format|
      format.html { redirect_to weights_url, notice: 'Weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


private
  def set_weight
    @weight = Weight.find(params[:id])
  end

  def weight_params
    params.require(:weight).permit(:weight, :weigh_date)
  end
end
