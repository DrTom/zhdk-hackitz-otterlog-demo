Otterlogs.Routers.Main = Backbone.Router.extend

  initialize: ->
    collection = window.Otterlogs.objects.otterlogs_collection = new Otterlogs.Collections.Otterlogs()
    setInterval ->
        collection.fetch({add:true}) # we can use fetch since no log will ever be removed by definition
      , 2000
    window.Otterlogs.objects.otterlogs_view = new Otterlogs.Views.Otterlogs({collection: collection})


  routes: 
    "": "root"
    "logs/": "index"

  root: ->
    @navigate("/logs/",{trigger: true})

  index: ->
    window.Otterlogs.objects.otterlogs_view.render()


