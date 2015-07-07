class UserWorkDetailsController < ApplicationController
  before_action :set_user_work_detail, only: [:show, :edit, :update, :destroy]

  # GET /user_work_details
  # GET /user_work_details.json
  def index
    @user_work_details = UserWorkDetail.all
  end

  # GET /user_work_details/1
  # GET /user_work_details/1.json
  def show
  end

  # GET /user_work_details/new
  def new
    @user_work_detail = UserWorkDetail.new
  end

  # GET /user_work_details/1/edit
  def edit
  end

  # POST /user_work_details
  # POST /user_work_details.json
  def create
    @user_work_detail = UserWorkDetail.new(user_work_detail_params)
    if user_work_detail_params[:login] == user_work_detail_params[:logout]
      @user_work_detail.total_time = user_work_detail_params[:logout_time] - user_work_detail_params[:login_time]
    end
    respond_to do |format|
      if @user_work_detail.save
        format.html { redirect_to @user_work_detail, notice: 'User work detail was successfully created.' }
        format.json { render :show, status: :created, location: @user_work_detail }
      else
        format.html { render :new }
        format.json { render json: @user_work_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_work_details/1
  # PATCH/PUT /user_work_details/1.json
  def update
    respond_to do |format|
      if @user_work_detail.update(user_work_detail_params)
        format.html { redirect_to @user_work_detail, notice: 'User work detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_work_detail }
      else
        format.html { render :edit }
        format.json { render json: @user_work_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_work_details/1
  # DELETE /user_work_details/1.json
  def destroy
    @user_work_detail.destroy
    respond_to do |format|
      format.html { redirect_to user_work_details_url, notice: 'User work detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_work_detail
      @user_work_detail = UserWorkDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_work_detail_params
      params.require(:user_work_detail).permit(:login, :logout, :total_time, :user_id, :employee_id, :login_time, :logout_time)
    end
end
