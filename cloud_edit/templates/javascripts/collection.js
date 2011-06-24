App.Collections.<%= controller_class_name %> = Backbone.Collection.extend({
    model: <%= class_name %>,
    url: '/<%= plural_name %>'
});
