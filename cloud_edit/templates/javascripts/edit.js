App.Views.Edit = Backbone.View.extend({
    events: {
        "submit form": "save"
    },
    
    initialize: function() {
        _.bindAll(this, 'render');
        this.model.bind('change', this.render);
        this.render();
    },
    
    save: function() {
        var self = this;
        var msg = this.model.isNew() ? 'Successfully created!' : "Saved!";
        
        this.model.save({ <%= attributes.collect { |a| "#{a.name}: this.$('[name=#{a.name}]').val()" }.join(", ") %> }, {
            success: function(model, resp) {
                new App.Views.Notice({ message: msg });
                Backbone.history.saveLocation('<%= plural_name %>/' + model.id);
            },
            error: function() {
                new App.Views.Error();
            }
        });
        
        return false;
    },
    
    render: function() {
        $(this.el).html(JST.<%= name %>({ model: this.model }));
        $('#app').html(this.el);

        <% attributes.each do |attribute| -%>
        this.$('[name=<%= attribute.name %>]').val(this.model.get('<%= attribute.name %>'));
        <% end %>
        
        this.delegateEvents();
    }
});
