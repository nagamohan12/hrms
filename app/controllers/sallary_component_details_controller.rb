class SallaryComponentDetailsController < ApplicationController
  before_action :set_sallary_component_detail, only: [:show, :edit, :update, :destroy]

  # GET /sallary_component_details
  # GET /sallary_component_details.json
  def index
    @sallary_component_details = SallaryComponentDetail.all
  end

  # GET /sallary_component_details/1
  # GET /sallary_component_details/1.json
  def show
  end

  # GET /sallary_component_details/new
  def new
    @sallary_component_detail = SallaryComponentDetail.new
  end

  # GET /sallary_component_details/1/edit
  def edit
  end

  # POST /sallary_component_details
  # POST /sallary_component_details.json
  def create
    @sallary_component_detail = SallaryComponentDetail.new(sallary_component_detail_params)

    respond_to do |format|
      if @sallary_component_detail.save
        format.html { redirect_to sallary_component_details_path, notice: 'Sallary component detail was successfully created.' }
        format.json { render :show, status: :created, location: @sallary_component_detail }
      else
        format.html { render :new }
        format.json { render json: @sallary_component_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sallary_component_details/1
  # PATCH/PUT /sallary_component_details/1.json
  def update
    respond_to do |format|
      if @sallary_component_detail.update(sallary_component_detail_params)
        format.html { redirect_to @sallary_component_detail, notice: 'Sallary component detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @sallary_component_detail }
      else
        format.html { render :edit }
        format.json { render json: @sallary_component_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sallary_component_details/1
  # DELETE /sallary_component_details/1.json
  def destroy
    @sallary_component_detail.destroy
    respond_to do |format|
      format.html { redirect_to sallary_component_details_url, notice: 'Sallary component detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sallary_component_detail
      @sallary_component_detail = SallaryComponentDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sallary_component_detail_params
      params.require(:sallary_component_detail).permit(:name, :print_name, :component_type, :amt_per, :status, :amt_per_value, :position)
    end
end
