class FamilyDetailsController < ApplicationController
  before_action :set_family_detail, only: [:show, :edit, :update, :destroy]

  # GET /family_details
  # GET /family_details.json
  def index
    @family_details = FamilyDetail.all
  end

  # GET /family_details/1
  # GET /family_details/1.json
  def show
  end

  # GET /family_details/new
  def new
    @family_detail = FamilyDetail.new
  end

  # GET /family_details/1/edit
  def edit
  end

  # POST /family_details
  # POST /family_details.json
  def create
    @family_detail = FamilyDetail.new(family_detail_params)

    respond_to do |format|
      if @family_detail.save
        format.html { redirect_to @family_detail, notice: 'Family detail was successfully created.' }
        format.json { render :show, status: :created, location: @family_detail }
      else
        format.html { render :new }
        format.json { render json: @family_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /family_details/1
  # PATCH/PUT /family_details/1.json
  def update
    respond_to do |format|
      if @family_detail.update(family_detail_params)
        format.html { redirect_to @family_detail, notice: 'Family detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @family_detail }
      else
        format.html { render :edit }
        format.json { render json: @family_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /family_details/1
  # DELETE /family_details/1.json
  def destroy
    @family_detail.destroy
    respond_to do |format|
      format.html { redirect_to family_details_url, notice: 'Family detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family_detail
      @family_detail = FamilyDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def family_detail_params
      params.require(:family_detail).permit(:name, :dob, :nationality, :gender, :blood_group_id, :profession, :relationship, :is_dependent, :user_id)
    end
end
