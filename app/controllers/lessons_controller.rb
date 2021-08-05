class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show update destroy ]

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all

    render 'index.json'
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    render 'show.json'
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      render :show, status: :created, location: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update
    if @lesson.update(lesson_params)
      render :show, status: :ok, location: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_params
      params.require(:lesson).permit(:name, :description, :course_id)
    end
end
