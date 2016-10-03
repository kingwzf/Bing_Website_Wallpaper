class BingImagesController < ApplicationController
  before_action :set_bing_image, only: [:show, :edit, :update, :destroy]

  # GET /bing_images
  # GET /bing_images.json
  def index
    @bing_images = BingImage.all
  end

  # GET /bing_images/1
  # GET /bing_images/1.json
  def show
  end

  # GET /bing_images/new
  def new
    @bing_image = BingImage.new
  end

  # GET /bing_images/1/edit
  def edit
  end

  # POST /bing_images
  # POST /bing_images.json
  def create
    @bing_image = BingImage.new(bing_image_params)

    respond_to do |format|
      if @bing_image.save
        format.html { redirect_to @bing_image, notice: 'Bing image was successfully created.' }
        format.json { render :show, status: :created, location: @bing_image }
      else
        format.html { render :new }
        format.json { render json: @bing_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bing_images/1
  # PATCH/PUT /bing_images/1.json
  def update
    respond_to do |format|
      if @bing_image.update(bing_image_params)
        format.html { redirect_to @bing_image, notice: 'Bing image was successfully updated.' }
        format.json { render :show, status: :ok, location: @bing_image }
      else
        format.html { render :edit }
        format.json { render json: @bing_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bing_images/1
  # DELETE /bing_images/1.json
  def destroy
    @bing_image.destroy
    respond_to do |format|
      format.html { redirect_to bing_images_url, notice: 'Bing image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bing_image
      @bing_image = BingImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bing_image_params
      params.require(:bing_image).permit(:link)
    end
end
