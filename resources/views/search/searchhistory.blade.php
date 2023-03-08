@extends('app')

@section('content')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

    <script>
        $(document).ready(function() {
            //Add CSRF token to headers
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $('input[type="checkbox"]').click(function() {
                const val = $(this).val()
                if ($(this).prop("checked") == true) {
                    alert(val + ' Checked and sending data to server')
                    $.ajax({
                            type: "POST",
                            url: "file", // Route
                            data: {
                                checkbox_val: val
                            }
                        })
                        .done(function(msg) {
                            alert("Data: " + msg);
                        });
                } else {
                    alert($(this).val() + ' unchecked');
                    $.ajax({
                            type: "POST",
                            url: "file",
                            data: {
                                checkbox_val: val
                            }
                        })
                        .done(function(msg) {
                            alert('Record removed');
                        });
                }
            });
        });
    </script>


    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 ">
                @include('sidebar')
            </div>
            <div class="col-md-12 ">
                <div class="card">
                    <div class="card-header">{{ __('Search History') }}</div>
                    <div class="card-body">
                        <div class="col-md-4 float-left">
                            <div class="card">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr class="bg-info text-white">
                                                <th colspan="2">All Keywords</th>
                                            </tr>
                                            <tr>
                                                <th>Keywords</th>
                                                <th>Count</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @forelse ($countKeywords  as $x => $eachKey)
                                                <tr>
                                                    <td> <input type="checkbox"> {{ $x }}
                                                    </td>
                                                    <td>{{ $eachKey }}</td>
                                                </tr>
                                            @empty
                                                <h6 class="alert alert-danger">Nothing found</h6>
                                            @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card mt-1">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr class="bg-info text-white">
                                                <th colspan="2">All Users</th>
                                            </tr>

                                        </thead>
                                        <tbody>
                                            @forelse ($allUsers  as $x => $echuser)
                                                <tr>
                                                    <td> <input value="{{ $echuser->user_id }}" type="checkbox">
                                                        {{ $echuser->name }}
                                                    </td>

                                                </tr>
                                            @empty
                                                <h6 class="alert alert-danger">Nothing found</h6>
                                            @endforelse
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card mt-1">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr class="bg-info text-white">
                                                <th colspan="2">Time Range</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input value="1" type="checkbox"> Yesterday
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input value="2" type="checkbox"> Last Week
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input value="3" type="checkbox"> Last Month
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="card mt-1">
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr class="bg-info text-white">
                                                <th colspan="2">Select Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="date" id="from_date" class="form-control"
                                                        name="birthday">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="date" id="to_date" class="form-control"
                                                        name="birthday">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 float-left">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th width="15%">Time</th>
                                        <th>keywords</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse ($searchHistoryData as $eachKey)
                                        <tr>
                                            <td>{{ date('h:i A', strtotime($eachKey->created_at)) }}</td>
                                            <td>{{ $eachKey->keywords }}</td>
                                        </tr>
                                    @empty
                                        <h6 class="alert alert-danger">Nothing found</h6>
                                    @endforelse

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script></script>
@endsection
