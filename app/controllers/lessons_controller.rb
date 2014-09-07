class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def new
    @sections = Section.all
    @lesson = Lesson.new(params[:lesson])
    render('lessons/new.html.erb')
  end

  def create
    @sections = Section.all
    @lesson = Lesson.create(params[:lesson])
    if @lesson.save
      flash[:notice] = "Lesson was successfully added!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
  end
end

  def show
    @sections = Section.all
    @lesson = Lesson.find(params[:id])
    render('lessons/show.html.erb')
  end

  def edit
    @sections = Section.all
    @lesson = Lesson.find(params[:id])
    render('lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    if @lesson.update(params[:lesson])
      flash[:notice] = "Update was successful!"
      redirect_to("/lessons/#{@lesson.id}")
    else
      render('lessons/new.html.erb')
  end
end

  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    flash[:notice] = "Lesson has been successfully removed!"
    render('lessons/destroy.html.erb')
  end
end



