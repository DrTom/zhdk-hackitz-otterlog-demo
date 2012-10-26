Otterlogs.Views.Otterlogs = Backbone.View.extend

  template: JST['otterlogs/templates/otterlogs']

  row_template: JST['otterlogs/templates/otterlog_tr']

  initialize: ->
    @collection = @options.collection

    @collection.on "add", (model)=>
      @render()

  render: ->
    @setElement($("#content"))
    @$el.empty()
    @$el.append @template()

    $('.datatable').dataTable
       sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
       sPaginationType: "bootstrap"
 
    @collection.models.forEach (model)=>
      @add_row(model)

 
  add_row: (model)->
    debugger
    #@$('table.otterlogs').dataTable().fnAddData(model.attributes)
    
    #    @$('table.otterlogs').append @row_template({model:model})
#    $('.datatable').dataTable()




