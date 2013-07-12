updateCountdown = ->
  text = jQuery('#micropost_content').val()
  text = text.replace(/\s/g, '');
  remaining = 140 - text.length
  jQuery('.countdown').text remaining + ' characters remaining'

jQuery(document).ready ->
  jQuery('#new_micropost').append '<span class="countdown">140 characters remaining</span>'
  jQuery('#micropost_content').change updateCountdown
  jQuery('#micropost_content').keyup updateCountdown