var <%= class_name %> = Backbone.Model.extend({
    url : function() {
      var base = '<%= plural_name %>';
      if (this.isNew()) return base;
      return base + (base.charAt(base.length - 1) == '/' ? '' : '/') + this.id;
    }
});
