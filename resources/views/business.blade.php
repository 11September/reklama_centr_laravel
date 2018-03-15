@extends('layouts.profile')

@section('content')
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="header">
                            <h4 class="title">Business</h4>
                        </div>
                        <div class="content">
                            <p>{!! Voyager::setting('business_description') !!}</p>

                            <hr>

                            @foreach($result as $item)
                                <h5 class="text-center">{{ $item->name }}</h5>
                                <p class="description text-center">
                                    {{ $item->body }}
                                </p>

                                <p class="description text-center">
                                    <a target="_blank" href="{{ $item->url }}"
                                       class="btn btn-primary btn-block">{{ $item->name }}</a>
                                </p>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

@endsection