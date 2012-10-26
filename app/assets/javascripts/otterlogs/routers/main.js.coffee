Otterlogs.Routers.Main = Backbone.Router.extend

  routes: 
    "": "root"
    "/":  "root"
    "/otterlogs/": "index"

  root: ->
    @navigate("/otterlogs/",{trigger: true})

  index: ->

