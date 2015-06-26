# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery(document).on 'ready page:change', ->
  return unless $('.date-range').length

  # Get the initial values from the hidden fields.
  dateStartInitial = moment $('.date-range [name=start]').val()
  dateEndInitial   = moment $('.date-range [name=end]').val()

  # Initialize the date range picker with the initial values or defaults.
  $('.date-range').daterangepicker {
      ranges:
         'Today'        : [moment(), moment()],
         'Yesterday'    : [moment().subtract('days', 1), moment().subtract('days', 1)],
         'Last 7 Days'  : [moment().subtract('days', 6), moment()],
         'Last 30 Days' : [moment().subtract('days', 29), moment()],
         'This Month'   : [moment().startOf('month'), moment().endOf('month')],
         'Last Month'   : [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
      startDate: if dateStartInitial.isValid() then dateStartInitial else moment().subtract('days', 30)
      endDate:   if dateEndInitial.isValid()   then dateEndInitial   else moment()
    }, (start, end) ->
      # Fill in the description and associated hidden fields and make sure the clear button is visible.
      $('.date-range .description').text start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY')
      $('.date-range [name=start]').val start.format('YYYY-MM-DD')
      $('.date-range [name=end]').val end.format('YYYY-MM-DD')
      $('.clear-date-range').removeClass('hide')

  # Clear the date range and hide the clear button
  $('.clear-date-range').click ->
    $('.date-range .description').text('Any Time')
    $('.date-range input[type=hidden]').val('')
    $(this).addClass('hide')
