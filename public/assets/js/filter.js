var listvalues = []
var all_data = []
var filter_data = []

$(document).ready(function (id) {
  getAllData()
  $(document).on(
    'click',
    '.datesearch, .datesearch2, .user_checkbox, .keys_checkbox, .date_check',
    function () {
      filterDataNow()
    },
  )
  $('#from_date').on('change', function (e) {
    filterDataNow()
  })
  $('#to_date').on('change', function (e) {
    filterDataNow()
  })
})
function showData(response, isEmptyShow = false) {
  // cheacking if all unselected
  if (response.length == 0 && !isEmptyShow) response = all_data
  //   console.log('filter data size:', response.length)
  $('.causes_div').empty()

  $table_data = `<table  class=" table table-bordered">
                          <tr>
                              <th width="15%">Time</th>
                              <th>keywords</th>
                          </tr>`
  response.forEach((element) => {
    $table_data += `
          <tr>
            <td>${dateFromate(element.created_at)}</td>
            <td>${element.keywords}</td>
          </tr>`
  })
  $table_data += `</table>`
  $('.causes_div').append($table_data)
}
function getAllData() {
  $('.causes_div').empty()
  $.ajax({
    type: 'GET',
    url: 'getAllData',
    success: function (response) {
      var response = JSON.parse(response)
      console.log(response)

      if (response.length == 0) {
        $('.causes_div').append('No Data Found')
      } else {
        all_data = response
        // console.log('all data', all_data)
        showData(response)
      }
    },
  })
}
function filterDataNow() {
  var ids = []
  var keys = []
  var dateIds = []
  $('#catFilters').empty()
  $('.user_checkbox').each(function () {
    if ($(this).is(':checked')) {
      ids.push($(this).attr('id'))
    }
  })

  $('.keys_checkbox').each(function () {
    if ($(this).is(':checked')) {
      keys.push($(this).attr('id'))
    }
  })

  $('.date_check').each(function () {
    if ($(this).is(':checked')) {
      dateIds.push($(this).attr('id'))
    }
  })
  filterData(ids, keys, dateIds)
}

//data fatch for date
function filterData(ids, keys, dateIds) {
  //   console.log('filter')
  //   console.log('ids: ', ids)
  //   console.log('keys: ', keys)
  //   console.log('dates: ', dateIds)

  var filter_data = all_data
  if (ids.length > 0) {
    filter_data = filter_data.filter(function (value) {
      console.log('id: check', ids.includes(value.user_id.toString()))
      return ids.includes(value.user_id.toString())
    })
  }
  if (keys.length > 0) {
    filter_data = filter_data.filter(function (value) {
      //   console.log('keys: check', keys.includes(value.keywords))
      return keys.includes(value.keywords)
    })
  }
  if (dateIds.length > 0) {
    filter_data = dateCheck(filter_data, dateIds)
  }
  //   console.log('filter size', filter_data)
  start_date = document.getElementById('from_date').value
  end_date = document.getElementById('to_date').value

  filter_data = filterByDate(filter_data, start_date, end_date)

  showData(filter_data, ids.length > 0 || keys.length > 0 || dateIds.length > 0)
}

function filterByDate(filter_data, start_date, end_date) {
  //   console.log('start_date', start_date)
  //   console.log('end_date', end_date)

  console.log(
    'bool',
    end_date == null || end_date == undefined || end_date == '',
  )
  if (
    (start_date == null || start_date == undefined || start_date == '') &&
    (end_date == null || end_date == undefined || end_date == '')
  )
    return filter_data

  if (start_date == null || start_date == undefined || start_date == '')
    return filter_data.filter(
      (item) => new Date(item.created_at) <= Date.parse(end_date),
    )
  if (end_date == null || end_date == undefined || end_date == '')
    return filter_data.filter(
      (item) => new Date(item.created_at) >= Date.parse(start_date),
    )
  return filter_data.filter(
    (item) =>
      new Date(item.created_at) >= Date.parse(start_date) &&
      new Date(item.created_at) <= Date.parse(end_date),
  )
}

function dateCheck(data, dateIds) {
  // Get the current date
  const today = new Date()

  // Get the date for yesterday
  const yesterday = new Date(today)
  yesterday.setDate(today.getDate() - 1)

  // Get the date for last week
  const lastWeek = new Date(today)
  lastWeek.setDate(today.getDate() - 7)

  // Get the date for last month
  const lastMonth = new Date(today)
  lastMonth.setMonth(today.getMonth() - 1)

  // Filter the data based on the date range
  const filteredDataYesterday = data.filter(
    (item) =>
      new Date(item.created_at) >= yesterday &&
      new Date(item.created_at) < today,
  )
  const filteredDataLastWeek = data.filter(
    (item) =>
      new Date(item.created_at) >= lastWeek &&
      new Date(item.created_at) < today,
  )
  const filteredDataLastMonth = data.filter(
    (item) =>
      new Date(item.created_at) >= lastMonth &&
      new Date(item.created_at) < today,
  )

  //   console.log("filteredDataYesterday",filteredDataYesterday)
  //   console.log("filteredDataLastWeek",filteredDataLastWeek)
  //   console.log("filteredDataLastMonth",filteredDataLastMonth)

  if (dateIds.includes('3')) return filteredDataLastMonth
  if (dateIds.includes('2')) return filteredDataLastWeek
  if (dateIds.includes('1')) return filteredDataYesterday
  return data
}
function dateFromate(dateValue) {
  // Get the current date
  const today = new Date()

  // Sample SQL datetime value
  const sqlDatetime = dateValue.toLocaleString().split('.')[0]

  // Convert SQL datetime to JavaScript date object
  const jsDate = new Date(sqlDatetime)

  // Format date object to AM/PM time format
  const formattedTime = jsDate.toLocaleString('en-US', {
    hour: 'numeric',
    minute: 'numeric',
    hour12: true,
  })
  const formattedDateTime = jsDate.toLocaleString('en-US', {
    year: 'numeric',
    month: 'numeric',
    day: 'numeric',
    hour: 'numeric',
    minute: 'numeric',
    hour12: true,
  })

  if (jsDate.getDate() == today.getDate) return formattedTime
  // Output: 2:30 PM
  else return formattedDateTime
}

//date to ampm
function formatAMPM(date) {
  var hours = date.getHours()
  var minutes = date.getMinutes()
  var ampm = hours >= 12 ? 'pm' : 'am'
  hours = hours % 12
  hours = hours ? hours : 12 // the hour '0' should be '12'
  minutes = minutes < 10 ? '0' + minutes : minutes
  var strTime = hours + ':' + minutes + ' ' + ampm
  return strTime
}
