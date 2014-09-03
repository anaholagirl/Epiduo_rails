class SectionController < ApplicationController

  def index
    @lessons = Lesson.all
    @sections = Section.all
    render ('sections/index.html.erb')
  end

  def new
    @section = Section.new
    render ('sections/new.html.erb')

  end
