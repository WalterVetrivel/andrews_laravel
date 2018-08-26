@extends('layouts.master')

@section('content')
{{-- Landing --}}
<header id="gallery-landing" class="py-5">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-12 col-md-8 mt-5 text-center">
                <h1 class="text-center p-5 mt-5">Welcome to my gallery</h1>
                <hr class="my-5 white">
                <a data-scroll href="#gallery" class="btn btn-outline-secondary btn-lg btn-gallery">
                    See photos
                    <i class="fa fa-angle-double-down"></i>
                </a>
            </div>
        </div>
    </div>
</header>
{{-- End Landing --}}

{{-- Photos Section --}}
<section id="gallery" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">Some photos</h2>
            </div>
        </div>
        <div class="row">
            @for($i = 1;$i <= 17;$i++)
                <div class="col-md-4 mb-2">
                    <button type="button" class="btn btn-link" data-toggle="modal" data-target="#img{{$i}}">
                        <img src="{{ URL::asset('img/gallery/'.$i.'.jpg') }}" alt="Image" class="gallery-thumbnail img-fluid">
                    </button>
                </div>
                <div class="modal" id="img{{$i}}">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Image</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="modal-body p-0 text-center">
                                <img src="{{ URL::asset('img/gallery/'.$i.'.jpg') }}" alt="Image" class="img-fluid">
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-outline-secondary btn-gallery" data-dismiss="modal">Close</button>
                            </div>
                        </div>
                    </div>
                </div>
            @endfor
        </div>
    </div>
</section>
{{-- End Photos --}}
@endsection
