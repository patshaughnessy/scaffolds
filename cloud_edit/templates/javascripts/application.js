var App = {
    Views: {},
    Controllers: {},
    Collections: {},
    init: function() {
        new App.Controllers.<%= controller_class_name %>();
        Backbone.history.start();
    }
};
