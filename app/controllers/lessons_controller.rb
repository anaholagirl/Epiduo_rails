class LessonsController < ApplicationController

  def toc
    @lessons = Lessons.all
    render ('lessons/toc.html.erb')
  end
