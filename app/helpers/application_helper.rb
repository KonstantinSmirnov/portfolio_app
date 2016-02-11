module ApplicationHelper
  def active_link?(link)
    return "active" if request.path == link
  end
end
