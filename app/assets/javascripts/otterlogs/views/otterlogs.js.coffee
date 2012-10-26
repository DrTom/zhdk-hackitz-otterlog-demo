Otterlogs.Views.Otterlogs = Backbone.View.extend

  template: JST['otterlogs/templates/otterlogs']

  row_template: JST['otterlogs/templates/otterlog_tr']

  initialize: ->
    @collection = @options.collection

    @collection.on "add", (model)=>
      @add_row(model)

  render: ->
    @setElement($("#content"))
    @$el.empty()
    @$el.append @template()

    @collection.models.forEach (model)=>
      @add_row(model)
  
  add_row: (model)->
    @$('table.otterlogs').append @row_template({model:model})



