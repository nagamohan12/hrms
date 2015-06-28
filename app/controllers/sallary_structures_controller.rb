class SallaryStructuresController < ApplicationController
  before_action :set_sallary_structure, only: [:show, :edit, :update, :destroy]

  # GET /sallary_structures
  # GET /sallary_structures.json
  def index
    # @employee = Employee.find(params[:employee_id])
    # @sallary_structures = @employee.sallary_structures
    @sallary_structures = SallaryStructure.all
  end

  def employee_sallary_structure
    @employee = Employee.find(params[:employee_id])
    @sallary_structures = @employee.sallary_structures
  end

  # GET /sallary_structures/1
  # GET /sallary_structures/1.json
  def show
  end

  # GET /sallary_structures/new
  def new
    @sallary_structure = SallaryStructure.new
  end

  # GET /sallary_structures/1/edit
  def edit
  end

  # POST /sallary_structures
  # POST /sallary_structures.json
  def create
    @sallary_structure = SallaryStructure.new(sallary_structure_params)

    respond_to do |format|
      if @sallary_structure.save
        @employee = Employee.find(sallary_structure_params[:employee_id])
        format.html { redirect_to employee_sallary_structure_path(@employee.id), notice: 'Sallary structure was successfully created.' }
        format.json { render :show, status: :created, location: @sallary_structure }
      else
        format.html { render :new }
        format.json { render json: @sallary_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sallary_structures/1
  # PATCH/PUT /sallary_structures/1.json
  def update
    respond_to do |format|
      if @sallary_structure.update(sallary_structure_params)
        format.html { redirect_to @sallary_structure, notice: 'Sallary structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @sallary_structure }
      else
        format.html { render :edit }
        format.json { render json: @sallary_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sallary_structures/1
  # DELETE /sallary_structures/1.json
  def destroy
    @sallary_structure.destroy
    respond_to do |format|
      format.html { redirect_to sallary_structures_url, notice: 'Sallary structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sallary_structure
      @sallary_structure = SallaryStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sallary_structure_params
      params.require(:sallary_structure).permit(:name, :amount, :sallary_component_detail_id, :employee_id)
    end
end
