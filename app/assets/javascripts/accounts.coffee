# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#username").keyup(->
    $.get(
      "http://localhost:3000/accounts/exists",
      { username: $('#username').val() },
      (data) ->
        if data.result
        else
    )
  )
