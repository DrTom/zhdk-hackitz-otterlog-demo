Otterlogs.Views.CreateLog = Backbone.View.extend

  template: JST['otterlogs/templates/create_log']
  template_select: JST['otterlogs/templates/create_log_select']

  initialize: ->
    @model = @options.model

  fields: [ 
    { key: 'state'
    , label: 'Status'
    , values: ['fröhlich', 'neutral', 'traurig', 'schlafend', 'sich putzend', 'kopulierend']
    }
    { key: 'place'
    , label: 'Ort'
    , values: ['Am Ufer', 'auf dem grossen Stein', 'im Wasser', 'in Schlafbox A', 'in Schlafbox B']
    }
    { key: 'wetness'
    , label: 'Nassheit'
    , values: ['nass', 'trocken', 'langsam trocknend']
    }
    { key: 'is_eating'
    , label: "Frisst greade"
    , values: ["ja","nein"] 
    }]

  render: ->
    self=@
    console.log "rendering create log"

    $("#content").empty()
    $("#content").append @template()
    @setElement($("#create_log"))

    for field in @fields
      @$("#fields").append @template_select({field: field})


    @$('button#cancel').on 'click', (event)->
      event.preventDefault()
      window.router.navigate 'logs/',{trigger: true}
      false
      
    @$('button#submit').on 'click', (event)=>
      event.preventDefault()
      @model.set documented_at: (new Date()).toISOString()
      window.Otterlogs.objects.otterlogs_collection.add(@model)
      @save()
      window.router.navigate 'logs/',{trigger: true}
      false

    @$("select").change (event)=> @set_model()
    @$("#name").keyup (event)=> @set_model()
    
    @validate()
     
  set_model: ->
    @model.set 'name', @$('input#name').val(), {silent: true}
    $("form option:selected").each (i,el)=>
      @model.set $(el).attr('key'), $(el).val(), {silent: true}
    @validate()

  validate: ->
    if @model.isValid()
      @$("button#submit").attr('disabled',false)
    else
      @$("button#submit").attr('disabled',true)
 
  save: ->
    self=@
    @model.save
      error: (model,response) ->
        console.log "saving failed"





