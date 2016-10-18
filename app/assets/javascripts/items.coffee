$(document).on "page:change", ->
  $('#add_item').click ->
    alert("hi!")
    blocmetrics.report("Clicked on Add Item")
