class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @lesson = Lesson.new(params[:lesson])
    render('lessons/new.html.erb')
  end

  def create
    @lesson = Lesson.create(params[:lesson])
    if @lesson.save
      flash[:notice] = "Lesson was successfully added!"
      redirect_to("lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Update was successful!"
      redirect_to("lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Lesson has been successfully removed!"
    redirect_to("lessons/#{@lesson.id}")
  end
end



