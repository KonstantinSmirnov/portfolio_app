module ApplicationHelper

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new

    id = new_object.object_id

    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", question: builder)
    end
    link_to(name, '#', class: "add_fields btn btn-default btn-sm", data: {id: id, fields: fields.gsub("\n", "")})
  end

  def full_title(page_title = '')
    base_title = @content.logo_text
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end

end
