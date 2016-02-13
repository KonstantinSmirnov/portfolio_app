class StaticPagesController < ApplicationController

  def index
    @poll = Poll.last
  end

  def projects
    @projects = Project.all
  end

  def contacts
  end

end
