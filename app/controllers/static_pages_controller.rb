class StaticPagesController < ApplicationController

  def index
    @poll = Poll.last
    @content = Content.first
  end

  def projects
    @projects = Project.all
  end

  def contact
    @message = Message.new
    @content.linkedin_link
  end

end
