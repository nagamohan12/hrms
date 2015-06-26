class PersonnelDetailsController < ApplicationController
  before_action :set_personnel_detail, only: [:show, :edit, :update, :destroy]

  # GET /personnel_details
  # GET /personnel_details.json
  def index
    @personnel_details = PersonnelDetail.all
  end

  # GET /personnel_details/1
  # GET /personnel_details/1.json
  def show
  end

  # GET /personnel_details/new
  def new
    @personnel_detail = PersonnelDetail.new
  end

  # GET /personnel_details/1/edit
  def edit
  end

  # POST /personnel_details
  # POST /personnel_details.json
  def create
    @personnel_detail = PersonnelDetail.new(personnel_detail_params)

    respond_to do |format|
      if @personnel_detail.save
        format.html { redirect_to @personnel_detail, notice: 'Personnel detail was successfully created.' }
        format.json { render :show, status: :created, location: @personnel_detail }
      else
        format.html { render :new }
        format.json { render json: @personnel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /personnel_details/1
  # PATCH/PUT /personnel_details/1.json
  def update
    respond_to do |format|
      if @personnel_detail.update(personnel_detail_params)
        format.html { redirect_to @personnel_detail, notice: 'Personnel detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @personnel_detail }
      else
        format.html { render :edit }
        format.json { render json: @personnel_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /personnel_details/1
  # DELETE /personnel_details/1.json
  def destroy
    @personnel_detail.destroy
    respond_to do |format|
      format.html { redirect_to personnel_details_url, notice: 'Personnel detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personnel_detail
      @personnel_detail = PersonnelDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def personnel_detail_params
      params.require(:personnel_detail).permit(:birth_place, :caste, :nationality, :voter_id, :aadhar_no, :marital_status, :anniversary_date, :spouse_name, :no_of_children, :personnel_email, :personnel_email1, :personnel_mobile, :personnel_mobile1, :emergency_contact_number, :user_id)
    end
end
