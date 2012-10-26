Otterlogs.Views.Otterlogs = Backbone.View.extend

  template: JST['otterlogs/templates/otterlogs']

  initialize: ->

  render: ->
    @setElement($("#content"))
    @$el.empty()
    @$el.append @template()

