class SectionsController < ApplicationController

  def index
    @lessons = Lesson.all
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new(params[:section])
    render('sections/new.html.erb')
  end

  def create
    @lessons = Lesson.all
    @section = Section.create(params[:section])
      if @section.save
        flash[:notice] = "Section was successfully added!"
        # render("sections/success.html.erb")
        redirect_to("/sections/#{@section.id}")
      else
        render('sections/new.html.erb')
      end
  end

  def show
    @lessons = Lesson.all
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end

  def edit
    @lessons = Lesson.all
    @section = Section.find(params[:id])
    render('sections/edit.html.erb')
  end

  def update
    @section = Section.find(params[:id])
      if @section.update(params[:section])
        flash[:notice] = "Update was successful!"
        # redirect_to("/sections/#{@section.id}")
        render('sections/success.html.erb')
      else
        render('sections/edit.html.erb')
      end
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    flash[:notice] = "Section has been successfully removed!"
    render('sections/destroy.html.erb')
  end
end
