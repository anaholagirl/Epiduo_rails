class SectionsController < ApplicationController

  def index
    @lessons = Lesson.all
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render('sections/new.html.erb')
  end

  def create
    @section = Section.create(params[:section])
      if @section.save
        flash[:notice] = "Section was successfully added!"
        redirect_to('/sections/#{@section.id}')
      else
        render('sections/new.html.erb')
      end
  end

  def show
    @section = Section.find(params[:id])
    render('sections/show.html.erb')
  end
end
