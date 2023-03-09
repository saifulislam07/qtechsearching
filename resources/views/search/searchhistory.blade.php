@extends('app')

@section('content')
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
                                            <?php $counter = 0; ?>
                                            @forelse ($countKeywords  as $x => $eachKey)
                                                <tr>
                                                    <td> <input {{ $counter == 0 ? '' : 'checked' }}
                                                            attr-name="{{ $x }}" class="keys_checkbox"
                                                            type="checkbox" id="{{ $x }}">
                                                        {{ $x }}
                                                    </td>
                                                    <td>{{ $eachKey }}</td>
                                                </tr>
                                            @empty

                                                <h6 class="alert alert-danger">Nothing found</h6>
                                            @endforelse
                                            <?php $counter++; ?>
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
                                            <?php $counterU = 0; ?>
                                            @forelse ($allUsers  as $x => $echuser)
                                                <tr>
                                                    <td> <input {{ $counterU == 0 ? '' : 'checked' }}
                                                            value="{{ $echuser->user_id }}"
                                                            attr-name="{{ $echuser->user_id }}" id="{{ $echuser->user_id }}"
                                                            class="user_checkbox" type="checkbox">
                                                        {{ $echuser->name }}
                                                    </td>

                                                </tr>
                                            @empty
                                                <h6 class="alert alert-danger">Nothing found</h6>
                                            @endforelse
                                            <?php $counterU++; ?>
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
                            <div class="row causes_div">

                            </div>


                            {{-- <table class="table table-bordered">
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
                            </table> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="{{ asset('assets/js/jquery-3.4.0.min.js') }}"></script>
    <script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/js/filter.js') }}"></script>
    <script></script>
@endsection
