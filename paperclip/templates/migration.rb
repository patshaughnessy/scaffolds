class <%= migration_class_name %> < ActiveRecord::Migration
  def self.up
    create_table :<%= table_name %> do |t|
<% for attribute in attributes -%>
      t.<%= attribute.type %> :<%= attribute.name %>
<% end -%>
      t.string   :<%= scaffold_parameter %>_file_name
      t.string   :<%= scaffold_parameter %>_content_type
      t.integer  :<%= scaffold_parameter %>_file_size
      t.datetime :<%= scaffold_parameter %>_updated_at
<% if options[:timestamps] %>
      t.timestamps
<% end -%>
    end
  end

  def self.down
    drop_table :<%= table_name %>
  end
end
