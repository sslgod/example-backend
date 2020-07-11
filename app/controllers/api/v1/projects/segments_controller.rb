class Api::V1::Projects::SegmentsController < ApplicationController
  before_action :set_project
  before_action :set_segment, only: [:show, :update, :destroy]

  # GET /segments
  def index
    @segments = Segment.all

    render json: @segments
  end

  # GET /segments/1
  def show
    render json: @segment
  end

  # POST /segments
  def create
    @segment = @current_project.segments.new(segment_params)

    if @segment.save
      render json: @segment, status: :created
    else
      render json: @segment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /segments/1
  def update
    if @segment.update(segment_params)
      render json: @segment
    else
      render json: @segment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /segments/1
  def destroy
    @segment.destroy
  end

  private
    def set_project
      @current_project = Project.find(params[:id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_segment
      @segment = Segment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def segment_params
      params.require(:segment).permit(:name, :days_duration, :days_suffix, :started_at, :description)
    end
end
