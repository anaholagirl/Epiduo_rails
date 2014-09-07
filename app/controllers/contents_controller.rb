class ContentsController < ApplicationController

  def index
    @contents = Content.all
    render('contents/index.html.erb')
  end
end
