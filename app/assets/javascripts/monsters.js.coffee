# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  writeStar = () ->
    $('#st_stars').empty()
    for i in [0...5]
      star = if (i< rank) then star01 else star00
      $('<span></span>').html(star).appendTo($('#st_stars'))
    $('#wst_stars').val rank

  star00 = "☆"
  star01 = "★"
  rank = 1
  writeStar()

  $('#st_stars').on 'click', 'span',  ->
    rank = $('#st_stars span').index(@) + 1
    console.log rank
    writeStar()


