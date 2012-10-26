Otterlogs.Views.Otterlogs = Backbone.View.extend

  template: JST['otterlogs/templates/otterlogs']

  row_template: JST['otterlogs/templates/otterlog_tr']

  initialize: ->
    @collection = @options.collection

    @collection.on "add", (model)=>
      @add_row(model)


  render: ->
    $("#content").empty()
    $("#content").append @template()
    @setElement $("#logs")

    $('.datatable').dataTable
       sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
       sPaginationType: "bootstrap"
 
    @$('#add_new_otterlog').on 'click', (event) =>
      console.log 'adding a new otterlog'
      window.router.navigate "logs/create", {trigger: true}

    @collection.models.forEach (model)=>
      @add_row(model)

 
  add_row: (model)->
    @$('table.otterlogs').dataTable().fnAddData([ model.get('name')
      , model.get('documented_at')
      , model.get('state')
      , model.get('place')
      , model.get('wetness')
      , model.get('is_eating')
      ])
    #(model.attributes)
    
    #    @$('table.otterlogs').append @row_template({model:model})
#    $('.datatable').dataTable()




