$(document).on "page:change", ->
  $('#add_item').click ->
    blocmetrics.report("Clicked on Add Item")
