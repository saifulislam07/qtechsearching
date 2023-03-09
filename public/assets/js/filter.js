$(document).ready(function () {
  $(document).on('click', '.user_checkbox', function () {
    var ids = []

    var counter = 0
    $('#catFilters').empty()
    $('.user_checkbox').each(function () {
      if ($(this).is(':checked')) {
        ids.push($(this).attr('id'))
        $('#catFilters').append(
          `<div class="alert fade show alert-color _add-secon" role="alert"> ${$(
            this,
          ).attr(
            'attr-name',
          )}<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> </div>`,
        )
        counter++
      }
    })

    $('._t-item').text('(' + ids.length + ' items)')

    if (counter == 0) {
      $('.causes_div').empty()
      $('.causes_div').append('No Data Found for user')
    } else {
      fetchDataByUserId(ids)
    }
  })
})

$(document).ready(function () {
  $(document).on('click', '.keys_checkbox', function () {
    var ids = []

    var counter = 0
    $('#catFilters').empty()
    $('.keys_checkbox').each(function () {
      if ($(this).is(':checked')) {
        ids.push($(this).attr('id'))
        $('#catFilters').append(
          `<div class="alert fade show alert-color _add-secon" role="alert"> ${$(
            this,
          ).attr(
            'attr-name',
          )}<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">×</span></button> </div>`,
        )
        counter++
      }
    })

    $('._t-item').text('(' + ids.length + ' items)')

    if (counter == 0) {
      $('.causes_div').empty()
      $('.causes_div').append('No Data Found')
    } else {
      fatchDataByKeys(ids)
    }
  })
})

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

function fatchDataByKeys(id) {
  $('.causes_div').empty()
  $.ajax({
    type: 'GET',
    url: 'getDataByKey/' + id,
    success: function (response) {
      var response = JSON.parse(response)
      console.log(response)

      if (response.length == 0) {
        $('.causes_div').append('No Data Found')
      } else {
        response.forEach((element) => {
          $('.causes_div').append(`<table  class=" table table-bordered">

                                    <tr>
                                        <th width="15%">Time</th>
                                        <th>keywords</th>
                                    </tr>
                    <tr>
                    <td>${element.created_at}</td>
                    <td>${element.keywords}</td>
                    </tr>

                    </table>`)
        })
      }
    },
  })
}

function fetchDataByUserId(id) {
  $('.causes_div').empty()
  $.ajax({
    type: 'GET',
    url: 'fetchDataByUserId/' + id,
    success: function (response) {
      var response = JSON.parse(response)
      console.log(response)

      if (response.length == 0) {
        $('.causes_div').append('No Data Found for user')
      } else {
        response.forEach((element) => {
          $('.causes_div').append(`<table  class=" table table-bordered">

                                    <tr>
                                        <th width="15%">Time</th>
                                        <th>keywords</th>
                                    </tr>
                    <tr>
                    <td>${element.created_at}</td>
                    <td>${element.keywords}</td>
                    </tr>

                    </table>`)
        })
      }
    },
  })
}
