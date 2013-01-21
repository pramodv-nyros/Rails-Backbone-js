window.Pethotel =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
    new Pethotel.Routers.Families()
    Backbone.history.start()
    asInitVals = new Array()

$(document).ready ->
  
  # oTable = $("#example").dataTable(
    # # "bStateSave": true
    # # oLanguage:
      # # sSearch: "Search all columns:"
# # 
    # # bJQueryUI: true
    # # sPaginationType: "full_numbers"
  # )
  Pethotel.initialize()
  
