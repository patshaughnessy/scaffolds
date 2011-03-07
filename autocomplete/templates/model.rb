class <%= class_name %> < <%= parent_class_name.classify %>
<% attributes.select {|attr| attr.reference? }.each do |attribute| -%>
  belongs_to :<%= attribute.name %>
<% end -%>
  def auto_complete_info(field)
    { "id" => id, "label" => send(field), "value" => send(field) }
  end
end
