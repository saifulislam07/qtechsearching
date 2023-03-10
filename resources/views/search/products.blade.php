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
                    <div class="card-header">{{ __('Search Products') }}</div>

                    <div class="card-body">
                        <form class=" my-lg-0" id="ajax">
                            <div class="col-md-10 float-left">
                                <input type="hidden" name="_token" id="csrf" value="{{ Session::token() }}">
                                <input class="form-control mr-sm-2 searchdata" type="search" placeholder="Search Product"
                                    required aria-label="Search">
                            </div>
                            <div class="col-md-2 float-left">

                                <button type="button" onclick="loadByAjax()" class=" btn-success btn-sm searchButton"
                                    id="save">Search</button>
                            </div>

                        </form>
                    </div>
                    <div class="card-body">
                        <div class="mydata"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function loadByAjax() {
            var searchdata = $('.searchdata').val();
            $.ajax({
                url: "/ajaxdata_postdata",
                type: "POST",
                data: {
                    _token: $("#csrf").val(),
                    name: searchdata,
                },

                success: function(respo) {
                    $('.mydata').html(respo);
                }
            });
        }
    </script>
@endsection
