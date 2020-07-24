class SavedVideosController < ApplicationController
  before_action :set_saved_video, only: [:show, :edit, :update, :destroy]

  # GET /saved_videos
  # GET /saved_videos.json
  def index
    @saved_videos = SavedVideo.all
  end

  # GET /saved_videos/1
  # GET /saved_videos/1.json
  def show
  end

  # GET /saved_videos/new
  def new
    @saved_video = SavedVideo.new
  end

  # GET /saved_videos/1/edit
  def edit
  end

  # POST /saved_videos
  # POST /saved_videos.json
  def create
    @saved_video = SavedVideo.new(saved_video_params)

    respond_to do |format|
      if @saved_video.save
        format.html { redirect_to @saved_video, notice: 'Saved video was successfully created.' }
        format.json { render :show, status: :created, location: @saved_video }
      else
        format.html { render :new }
        format.json { render json: @saved_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_videos/1
  # PATCH/PUT /saved_videos/1.json
  def update
    respond_to do |format|
      if @saved_video.update(saved_video_params)
        format.html { redirect_to @saved_video, notice: 'Saved video was successfully updated.' }
        format.json { render :show, status: :ok, location: @saved_video }
      else
        format.html { render :edit }
        format.json { render json: @saved_video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_videos/1
  # DELETE /saved_videos/1.json
  def destroy
    @saved_video.destroy
    respond_to do |format|
      format.html { redirect_to saved_videos_url, notice: 'Saved video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_video
      @saved_video = SavedVideo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_video_params
      params.require(:saved_video).permit(:user_id, :video_id)
    end
end
