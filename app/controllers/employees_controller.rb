class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy, :attendance]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  def attendance
    @user_work_details = @employee.user_work_details
  end

  def sallary_structure
    @components = sallaryComponentDetails.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    # @employee.build_user_detail
    # @employee.build_user_profession_detail
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        @user = User.new(email: employee_params[:email],user_name: employee_params[:user_name])
        @user.password = '12345678'
        @user.save
        @employee.update_attributes(user_id: @user.id)
        #test data
        UserWorkDetail.create_work_detail(Time.now,Time.now,(Time.now - 5000),Time.now,@employee.id)
        UserWorkDetail.create_work_detail(Time.now,Time.now,(Time.now + 2000),(Time.now + 8000),@employee.id)
        format.html { redirect_to employees_path, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def employee_params
    params.require(:employee).permit(:emp_id, :email, :user_name, :user_detail_attributes => [:id, :first_name, :last_name, :gender, :dob, :official_phone, :official_mobile, :fax, :official_email, :pan_no, :blood_group_id, :department_id, :designation_id, :grade_id, :religion_id, :user_type_id, :user_id, :employee_id], :user_profession_detail_attributes => [] )
  end
end
