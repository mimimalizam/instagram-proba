class InstaTagsController < ApplicationController
  before_action :set_insta_tag, only: [:show, :edit, :update, :destroy]

  # GET /insta_tags
  # GET /insta_tags.json
  def index
    @insta_tags = InstaTag.all
  end

  # GET /insta_tags/1
  # GET /insta_tags/1.json
  def show
  end

  # GET /insta_tags/new
  def new
    @insta_tag = InstaTag.new
  end

  # GET /insta_tags/1/edit
  def edit
  end

  # POST /insta_tags
  # POST /insta_tags.json
  def create
    @insta_tag = InstaTag.new(insta_tag_params)

    respond_to do |format|
      if @insta_tag.save
        format.html { redirect_to @insta_tag, notice: 'Insta tag was successfully created.' }
        format.json { render :show, status: :created, location: @insta_tag }
      else
        format.html { render :new }
        format.json { render json: @insta_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insta_tags/1
  # PATCH/PUT /insta_tags/1.json
  def update
    respond_to do |format|
      if @insta_tag.update(insta_tag_params)
        format.html { redirect_to @insta_tag, notice: 'Insta tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @insta_tag }
      else
        format.html { render :edit }
        format.json { render json: @insta_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insta_tags/1
  # DELETE /insta_tags/1.json
  def destroy
    @insta_tag.destroy
    respond_to do |format|
      format.html { redirect_to insta_tags_url, notice: 'Insta tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_insta_tag
      @insta_tag = InstaTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def insta_tag_params
      params.require(:insta_tag).permit(:name)
    end
end
