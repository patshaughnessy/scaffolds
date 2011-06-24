App.Controllers.<%= controller_class_name %> = Backbone.Controller.extend({
    routes: {
        "<%= plural_name %>/:id":   "edit",
        "":                         "index",
        "new":                      "newDoc"
    },
    
    edit: function(id) {
        var doc = new <%= class_name %>({ id: id });
        doc.fetch({
            success: function(model, resp) {
                new App.Views.Edit({ model: doc });
            },
            error: function() {
                new Error({ message: 'Could not find that <%= name %>.' });
                window.location.hash = '#';
            }
        });
    },
    
    index: function() {
        var <%= plural_name %> = new App.Collections.<%= controller_class_name %>();
        <%= plural_name %>.fetch({
            success: function() {
                new App.Views.Index({ collection: <%= plural_name %> });
            },
            error: function() {
                new Error({ message: "Error loading <%= plural_name %>." });
            }
        });
    },
    
    newDoc: function() {
        new App.Views.Edit({ model: new <%= class_name %>() });
    }
});
