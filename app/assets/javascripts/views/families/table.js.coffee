class Pethotel.Views.Table extends Backbone.View

  template: JST['families/table']
  tagName: "tr"
  events:
    'click' : 'show'
    'blur .c':'close',
    'keypress': 'enterupdate'
  initialize: ->
    @collection.on('reset', @render, this)
    
  # initialize: ->
    # @fam.on('reset', @render, this)
  render: ->
    $(@el).html(@template(family: @model))
    this
  show: ->  
    $(this.el).children().attr('contenteditable',true)
    # console.log($(this.el).children()[0].innerHTML)
    #console.log(this.model.attributes.phone)
  close: ->
    @collection.get(this.model.id).set('name', $(this.el).children()[0].innerHTML)
    @collection.get(this.model.id).set('dog' , $(this.el).children()[1].innerHTML)
    @collection.get(this.model.id).set('cat', $(this.el).children()[2].innerHTML)
    @collection.get(this.model.id).set('email', $(this.el).children()[3].innerHTML)
    @collection.get(this.model.id).set('phone', $(this.el).children()[4].innerHTML)
    @collection.get(this.model.id).set('city', $(this.el).children()[5].innerHTML)
      # a = @collection.get(this.model.id)
    @collection.create this.model
   
  enterupdate: (ev) ->
    if ev.keyCode == 13
      console.log(this)
      console.log(@collection.get(this.model.id))
      @collection.get(this.model.id).set('name', $(this.el).children()[0].innerHTML)
      @collection.get(this.model.id).set('dog' , $(this.el).children()[1].innerHTML)
      @collection.get(this.model.id).set('cat', $(this.el).children()[2].innerHTML)
      @collection.get(this.model.id).set('email', $(this.el).children()[3].innerHTML)
      @collection.get(this.model.id).set('phone', $(this.el).children()[4].innerHTML)
      @collection.get(this.model.id).set('city', $(this.el).children()[5].innerHTML)
      # a = @collection.get(this.model.id)
      @collection.create this.model
      # a.destroy()
      # a.save($(this.el).children()[0].innerHTML, $(this.el).children()[1].innerHTML,$(this.el).children()[2].innerHTML,$(this.el).children()[3].innerHTML,$(this.el).children()[4].innerHTML,$(this.el).children()[5].innerHTML)
      $(this.el).children().removeAttr('contenteditable')