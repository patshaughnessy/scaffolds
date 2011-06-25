class <%= class_name %> < ActiveRecord::Base
  <% attribs = attributes.collect {|attribute| ":#{attribute.name}" }.join(", ") %>
  attr_accessible <%= attribs %>

  self.include_root_in_json = false

  def to_json(options = {})
    super(options.merge(:only => [ :id, :created_at, <%= attribs %> ]))
  end
end
