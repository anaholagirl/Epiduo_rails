class ContentsController < ApplicationController

  def index
    @sections = Section.all
    @lessons = Lesson.all
    render('contents/content.html.erb')
  end
end
