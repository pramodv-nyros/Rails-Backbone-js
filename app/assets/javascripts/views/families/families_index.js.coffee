class Pethotel.Views.FamiliesIndex extends Backbone.View

  template: JST['families/index']
  tagName: "tr"
  

  initialize: ->
    @collection.on('reset', @render, this)
  render: ->
    if @collection.length == 0
      l =1
      $(@el).append(@template(l: l))
      this
    else
   
      for family in @collection.models
       
        v = new Pethotel.Views.Table({model: family,collection:@collection})
     
        $('#tbbody').append(v.render().el)
      wait:true
      $('#example').dataTable
        # sDom: "<'row-fluid'<'span6'l><'span6'f>r>t<'row-fluid'<'span6'i><'span6'p>>"
        "sDom": "<'row'<'span8'l><'span1'f>r>t<'row'<'span8'i><'span4'p>>"
        # "sDom": "<'row'<'span8'l><'span8'f>r>t<'row'<'span8'i><'span8'p>>"
        sPaginationType: "bootstrap",
        "iDisplayLength": 4,
        $.extend $.fn.dataTableExt.oStdClasses,
          sSortAsc: "header headerSortDown"
          sSortDesc: "header headerSortUp"
          sSortable: "header"
     
    
  