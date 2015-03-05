# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
jQuery ->
    $('#room_name').parent().append("<span class='help-block'></span>")
    $('#room_name').keydown ->
      inputLen   = $(@).val().length
      minLength  = 5
      maxLength  = 100
      correct    = '✓ '
      err        = '✗ '

      if inputLen == 0
        errMessage = err + ' Field is Required'
      else if inputLen < minLength
        errMessage = err + ' Not Long Enough'
      else if inputLen > maxLength
        errMessage = err + ' Too Long'
      else
        errMessage = correct

      $(@).parent().find(".help-block").html(errMessage)
      if errMessage != correct
        $(@).parent().addClass('has-error')
      else
        $(@).parent().addClass('has-success')
                     .removeClass('has-error')

