# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $("#username").keyup(->
    $.get(
      "/accounts/exists",
      { username: $('#username').val() },
      (data) ->
        if data.result
          $("#account-result").html("<div class='glyphicon glyphicon-remove text-danger'>このユーザ名は使われています</div>")
          $("#submit-button").prop("disabled", true)
        else
          $("#account-result").html("<div class='glyphicon glyphicon-ok text-success'>このユーザ名は使用可能です</div>")
          $("#submit-button").prop("disabled", false)
    )
  )
