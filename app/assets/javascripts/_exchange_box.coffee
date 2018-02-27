$(document).ready ->
  $('#quantity').keyup ->
    exchange()
  $('#currency').change ->
    exchange()
  $('#currency_destination').change ->
    exchange()
  $('#change_currency').click ->
    change_currency()

exchange = ->
    if $('form').attr('action') == '/exchange'
      $.ajax '/exchange',
          type: 'POST'
          dataType: 'json'
          data: {
                  currency: $("#currency").val(),
                  currency_destination: $("#currency_destination").val(),
                  quantity: $("#quantity").val()
                }
          error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
          success: (data, text, jqXHR) ->
            $('#result').val(data.value)
        return false;

change_currency = ->
  current_currency = $("#currency").val()
  $("#currency").val($("#currency_destination").val())
  $("#currency_destination").val(current_currency)
  exchange()
