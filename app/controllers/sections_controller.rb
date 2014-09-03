class SectionController < ApplicationController

  def index
    @sections = Section.all
    render ('sections/index.html.erb')
  end
