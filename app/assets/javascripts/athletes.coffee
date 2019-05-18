# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

fillAthlete = (received_id) ->
  id_list = [
    athlete_data
    athlete_history
    athlete_evaluation
  ]
  for id of id_list
    if received_id == id
      document.findElementById(id).display = 'block'
    else
      document.findElementById(id).display = 'none'
  return
  

teste = ->
  console.log 'Hello'
  return
