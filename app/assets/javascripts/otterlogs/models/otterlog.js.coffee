Otterlogs.Models.Otterlog = Backbone.Model.extend

  initialize: ->
    @id ||= @create_uuid()
    @attributes.id ||= @id

  validate: ->
    console.log 'validating'
    return "name must be present" unless @get('name')? and @get('name') != ''
    return "in the water must be wett" if @get('place')=='im Wasser' and @get('wetness')!='nass'
    return "must not be in water when sleeping" if @get('place')=='im Wasser' and @get('state')=='schlafend' 
    return null


  
