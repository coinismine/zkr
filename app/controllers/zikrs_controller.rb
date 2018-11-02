class ZikrsController < ApplicationController
  before_action :set_zikr, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  # GET /zikrs
  # GET /zikrs.json
  def index
    @zikrs = Zikr.paginate(:page => params[:page], per_page: 100)
  end

  # GET /zikrs/1
  # GET /zikrs/1.json
  def show
  end

  # GET /zikrs/new
  def new
    @zikr = current_user.zikrs.build
  end

  # GET /zikrs/1/edit
  def edit
  end

  # POST /zikrs
  # POST /zikrs.json
  def create
    @zikr = current_user.zikrs.build(zikr_params)

    respond_to do |format|
      if @zikr.save
        format.html { redirect_to @zikr, notice: 'آپ کی معلومات درج کر لی گئی ہے.' }
        format.json { render :show, status: :created, location: @zikr }
      else
        format.html { render :new }
        format.json { render json: @zikr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zikrs/1
  # PATCH/PUT /zikrs/1.json
  def update
    respond_to do |format|
      if @zikr.update(zikr_params)
        format.html { redirect_to @zikr, notice: 'Zikr was successfully updated.' }
        format.json { render :show, status: :ok, location: @zikr }
      else
        format.html { render :edit }
        format.json { render json: @zikr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zikrs/1
  # DELETE /zikrs/1.json
  def destroy
    @zikr.destroy
    respond_to do |format|
      format.html { redirect_to zikrs_url, notice: 'Zikr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zikr
      @zikr = Zikr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zikr_params
      params.require(:zikr).permit(:name, :city, :country, :phone, :date, :kalma_tayyaba, :durud_sharif, :astagfaar)
    end
end
