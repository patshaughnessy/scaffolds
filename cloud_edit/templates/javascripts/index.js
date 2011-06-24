App.Views.Index = Backbone.View.extend({
    initialize: function() {
        this.render();
    },
    
    render: function() {
        $(this.el).html(JST.<%= plural_name %>_collection({ collection: this.collection }));
        $('#app').html(this.el);
    }
});
