class StaticPagesController < ApplicationController

  def index
    @poll = Poll.last
    @content = Content.first
  end

  def projects
    @projects = Project.all.reverse
  end

  def contact
    @message = Message.new
  end

end
