@extends('layouts.master')

@section('content')
{{-- Landing --}}
<header id="publications-landing" class="py-5">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-12 col-md-8 mt-5 text-center">
                <h1 class="text-center p-5 mt-5">My list of publications</h1>
                <hr class="my-5 white">
                <a data-scroll href="#international" class="btn btn-lg btn-outline-info mr-2 mb-2 btn-publication">Conferences <i class="fa fa-angle-double-down"></i></a>
                <a data-scroll href="#journals" class="btn btn-lg btn-outline-info mr-2 mb-2 btn-2-publication">Refereed journals <i class="fa fa-angle-double-down"></i></a>
            </div>
        </div>
    </div>
</header>
{{-- End Landing --}}

{{-- International conferences --}}
<section id="international" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">International Conferences</h2>
            </div>
        </div>
        <div class="row">
            @for($i = 0;$i < count($international_publications); $i++)
                <div class="col-md-6">
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            international
                        @endslot
                        @slot('title')
                            {{$international_publications[$i]->title}}
                        @endslot
                        @slot('authors')
                            {{$international_publications[$i]->authors}}
                        @endslot
                        @slot('description')
                            {{$international_publications[$i]->description}}
                        @endslot
                    @endcomponent
                </div>
            @endfor
        </div>
    </div>
</section>
{{-- End International --}}

{{-- National Conferences --}}
<section id="national" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">National Conferences</h2>
            </div>
        </div>
        <div class="row">
            @for($i = 0;$i < count($national_publications); $i++)
                <div class="col-md-6">
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            national
                        @endslot
                        @slot('title')
                            {{$national_publications[$i]->title}}
                        @endslot
                        @slot('authors')
                            {{$national_publications[$i]->authors}}
                        @endslot
                        @slot('description')
                            {{$national_publications[$i]->description}}
                        @endslot
                    @endcomponent
                </div>
            @endfor
        </div>
    </div>
</section>
{{-- End National Conferences --}}

{{-- Books --}}
<section id="books" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">Books & Chapters</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h3 class="mb-5 text-center">Books</h3>
                @for($i = 0;$i < count($books); $i++)
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            book
                        @endslot
                        @slot('title')
                            {{$books[$i]->title}}
                        @endslot
                        @slot('authors')
                            {{$books[$i]->authors}}
                        @endslot
                        @slot('description')
                            {{$books[$i]->description}}
                        @endslot
                    @endcomponent
                @endfor
            </div>
            <div class="col-md-6">
                <h3 class="mb-5 text-center">Book chapters</h3>
                @for($i = 0;$i < count($book_chapters);$i++)
                    @if($i > 0)
                    <hr class="white">
                    @endif
                    @component('components.publication')
                        @slot('type')
                            book
                        @endslot
                        @slot('title')
                            {{$book_chapters[$i]->title}}
                        @endslot
                        @slot('authors')
                            {{$book_chapters[$i]->authors}}
                        @endslot
                        @slot('description')
                            {{$book_chapters[$i]->description}}
                        @endslot
                    @endcomponent
                @endfor
            </div>
        </div>
    </div>
</section>
{{-- End Books --}}

{{-- Refereed Journals --}}
<section id="journals" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">Refereed Journals</h2>
            </div>
        </div>
        <div class="row">
            @for($i = 0;$i < count($journals); $i++)
                <div class="col-md-6">
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            journal
                        @endslot
                        @slot('title')
                            {{$journals[$i]->title}}
                        @endslot
                        @slot('authors')
                            {{$journals[$i]->authors}}
                        @endslot
                        @slot('description')
                            {{$journals[$i]->description}}
                        @endslot
                    @endcomponent
                </div>
            @endfor
        </div>
    </div>
</section>
{{-- End Refereed Journals --}}
@endsection
