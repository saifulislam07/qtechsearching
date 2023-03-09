@extends('app')

@section('content')
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>


    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12 ">
                @include('sidebar')
            </div>
            <div class="col-md-12 ">
                <div class="card">
                    <div class="card-header">{{ __('Data Count') }}</div>

                    <div class="card-body">
                        <form class=" my-lg-0" action="{{ route('getDataCount') }}" method="post">
                            @csrf
                            <div class="col-md-12">
                                <input class="form-control mr-sm-2 searchdata" name="word" type="text"
                                    placeholder="Type your data" required aria-label="Search">
                                <input class="form-control mr-sm-2 mt-1 searchdata" name="looginFor" type="text"
                                    placeholder="Type your pattern text" required aria-label="Search">
                            </div>
                            <div class="col-md-12 mt-2 ">
                                <button type="submit" class=" btn-success btn-sm ">Count</button>
                            </div>

                        </form>
                    </div>
                    <div class="card-body">

                        @if ($count > 0)
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="alert alert-info">
                                        "The substring <b> {{ $substring }}</b> appears in the string of
                                        <b>{{ $string }}</b>
                                        <b>{{ $count }}</b>
                                        times."
                                    </h4>
                                </div>
                            </div>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
