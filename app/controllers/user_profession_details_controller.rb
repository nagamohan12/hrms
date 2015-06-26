class UserProfessionDetailsController < ApplicationController
  before_action :set_user_profession_detail, only: [:show, :edit, :update, :destroy]

  # GET /user_profession_details
  # GET /user_profession_details.json
  def index
    @user_profession_details = UserProfessionDetail.all
  end

  # GET /user_profession_details/1
  # GET /user_profession_details/1.json
  def show
  end

  # GET /user_profession_details/new
  def new
    @user_profession_detail = UserProfessionDetail.new
  end

  # GET /user_profession_details/1/edit
  def edit
  end

  # POST /user_profession_details
  # POST /user_profession_details.json
  def create
    @user_profession_detail = UserProfessionDetail.new(user_profession_detail_params)

    respond_to do |format|
      if @user_profession_detail.save
        format.html { redirect_to @user_profession_detail, notice: 'User profession detail was successfully created.' }
        format.json { render :show, status: :created, location: @user_profession_detail }
      else
        format.html { render :new }
        format.json { render json: @user_profession_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_profession_details/1
  # PATCH/PUT /user_profession_details/1.json
  def update
    respond_to do |format|
      if @user_profession_detail.update(user_profession_detail_params)
        format.html { redirect_to @user_profession_detail, notice: 'User profession detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_profession_detail }
      else
        format.html { render :edit }
        format.json { render json: @user_profession_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_profession_details/1
  # DELETE /user_profession_details/1.json
  def destroy
    @user_profession_detail.destroy
    respond_to do |format|
      format.html { redirect_to user_profession_details_url, notice: 'User profession detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_profession_detail
      @user_profession_detail = UserProfessionDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_profession_detail_params
      params.require(:user_profession_detail).permit(:emp_id, :doj, :status, :reporting_manager, :user_id)
    end
end
