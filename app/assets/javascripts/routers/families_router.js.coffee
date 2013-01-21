class Pethotel.Routers.Families extends Backbone.Router
  
  routes: 
    '': 'index'
    
  initialize: ->
    @collection = new Pethotel.Collections.Families()
    @collection.fetch()

  
  index: ->
   
    if @collection.length == 0
      view = new Pethotel.Views.FamiliesIndex(collection: @collection)
      $('#tl').html(view.render().el)
    
  