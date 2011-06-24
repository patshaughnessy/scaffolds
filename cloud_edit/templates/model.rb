<% attribs = attributes.collect {|attribute| ":#{attribute.name}" }.join(", ") %>
class <%= class_name %> < ActiveRecord::Base
  attr_accessible <%= attribs %>

  def to_json(options = {})
    super(options.merge(:only => [ :id, :created_at, <%= attribs %> ]))
  end
end
