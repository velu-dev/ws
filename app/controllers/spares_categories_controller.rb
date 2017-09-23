class SparesCategoriesController < ApplicationController
  before_action :set_spares_category, only: [:show, :edit, :update, :destroy]

  # GET /spares_categories
  # GET /spares_categories.json
  def index
    @spares_categories = SparesCategory.all
  end

  # GET /spares_categories/1
  # GET /spares_categories/1.json
  def show
  end

  # GET /spares_categories/new
  def new
    @spares_category = SparesCategory.new
  end

  # GET /spares_categories/1/edit
  def edit
  end

  # POST /spares_categories
  # POST /spares_categories.json
  def create
    @spares_category = SparesCategory.new(spares_category_params)

    respond_to do |format|
      if @spares_category.save
        format.html { redirect_to spares_categories_path, notice: 'Spares category was successfully created.' }
        format.json { render :show, status: :created, location: @spares_category }
      else
        format.html { render :new }
        format.json { render json: @spares_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spares_categories/1
  # PATCH/PUT /spares_categories/1.json
  def update
    respond_to do |format|
      if @spares_category.update(spares_category_params)
        format.html { redirect_to @spares_category, notice: 'Spares category was successfully updated.' }
        format.json { render :show, status: :ok, location: @spares_category }
      else
        format.html { render :edit }
        format.json { render json: @spares_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spares_categories/1
  # DELETE /spares_categories/1.json
  def destroy
    @spares_category.destroy
    respond_to do |format|
      format.html { redirect_to spares_categories_url, notice: 'Spares category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spares_category
      @spares_category = SparesCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spares_category_params
      params.require(:spares_category).permit(:category_name, :category_code)
    end
end
