Otterlogs.Models.Otterlog = Backbone.Model.extend

  initialize: ->
    @id ||= @create_uuid()
    @attributes.id ||= @id

