Otterlogs.Routers.Main = Backbone.Router.extend

  routes: 
    "": "root"
    "logs/": "index"

  root: ->
    @navigate("/logs/",{trigger: true})

  index: ->
    unless window.Otterlogs.objects.otterlogs?
      otterlogs = window.Otterlogs.objects.otterlogs= new Otterlogs.Collections.Otterlogs()
      setInterval ->
          otterlogs.fetch({add:true}) # we can use fetch since no log will ever be removed by definition
        , 2000

