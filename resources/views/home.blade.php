@extends('layouts.master')

@section('content')
    {{-- Landing Section --}}
    <header id="landing" class="py-5">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-8 text-center order-2">
                    <h1 class="px-3 py-5 mt-5 mb-3"><span class="mb-2 d-inline-block">Hi there!</span><br>I'm Prof. Dr. S. Andrews</h1>
                    <hr class="white my-5">
                    <p class="my-3">{{$bio[0]->intro}}</p>
                    <a data-scroll href="#bio" class="btn btn-lg btn-outline-info d-inline-block mt-3">
                        Get to know me
                        <i class="fa fa-angle-double-down"></i>
                    </a>
                </div>
                <div class="col-md-4 p-5 order-1 text-center">
                    <img src="{{ URL::asset('img/andrews1.jpg') }}" alt="Andrews" class="img-fluid rounded-circle">
                </div>
            </div>
        </div>
    </header>
    {{-- End Landing --}}

    {{-- Bio Section --}}
    <section id="bio" class="py-5">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <h2 class="text-center mb-3">Who am I?</h2>
                </div>
                <div class="col-6 text-center">
                    <hr>
                    <div class="bio py-2">
                        <p><b>Name: </b>{{$bio[0]->name}}</p>
                        <p><b>DOB: </b>{{date("d-m-Y", strtotime($bio[0]->dob))}}</p>
                        <p><b>Nationality: </b>{{$bio[0]->nationality}}</p>
                        <p><b>Current Position: </b>{{$bio[0]->current_position}}</p>
                    </div>
                    <hr>
                </div>
            </div>
        </div>
    </section>
    {{-- End Bio --}}

    {{-- Figures Section --}}
    <section id="figures" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">Facts & figures about me</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-calendar-check-o fa-3x"></i>
                    <p class="my-3">{{$figures[0]->experience}}+ years of experience</p>
                </div>
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-graduation-cap fa-3x"></i>
                    <p class="my-3">{{$figures[0]->degrees}} degrees</p>
                </div>
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-briefcase fa-3x"></i>
                    <p class="my-3">{{$figures[0]->professional_roles}} professional roles</p>
                </div>
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-book fa-3x"></i>
                    <p class="my-3">{{$figures[0]->publications}}+ publications in international conferences</p>
                </div>
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-user fa-3x"></i>
                    <p class="my-3">{{$figures[0]->students_supervised}} postgraduate students supervised</p>
                </div>
                <div class="col-md-4 col-sm-6 text-center p-4 fact">
                    <i class="fa fa-globe fa-3x"></i>
                    <p class="my-3">{{$figures[0]->countries_visited}} countries visited</p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="{{ route('resume') }}" class="btn btn-outline-secondary btn-lg">View resume &rarr;</a>
                </div>
            </div>
        </div>
    </section>
    {{-- End Figures --}}

    {{-- Involvements Section --}}
    <section id="involvements" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-4 text-center">What am I up to?</h2>
                </div>
            </div>
            <hr class="white">
            <div class="row py-3">
                <div class="col-md-6 px-5">
                    @for($i = 0;$i < count($present_involvements) / 2;$i++)
                        <p>
                            <i class="fa fa-check mr-2"></i>
                            {{$present_involvements[$i]->description}}
                        </p>
                    @endfor
                </div>
                <div class="col-md-6 px-5">
                    @for($i = $i;$i < count($present_involvements);$i++)
                        <p>
                            <i class="fa fa-check mr-2"></i>
                            {{$present_involvements[$i]->description}}
                        </p>
                    @endfor
                </div>
            </div>
            <hr class="white">
        </div>
    </section>
    {{-- End Involvements --}}

    {{-- Projects & Research Section --}}
    <section id="projects_research">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 projects p-5">
                    <h2 class="mb-4">Projects</h2>
                    <p class="mb-4">Over the years of my career, I've worked hands on on numerous projects. Click below to see a list of the projects I've been involved in.</p>
                    <a href="{{ route('projects') }}" class="btn btn-lg btn-outline-secondary">My projects &rarr;</a>
                </div>
                <div class="col-md-6 research p-5">
                    <h2 class="mb-4">Research</h2>
                    <p class="mb-4">I have also accumulated significant research experience by working on top notch research projects. Click below to see what research I've been involved in.</p>
                    <a href="{{ route('research') }}" class="btn btn-lg btn-outline-info">My research &rarr;</a>
                </div>
            </div>
        </div>
    </section>
    {{-- End Projects & Research --}}

    {{-- Awards & Achievements Section --}}
    <section id="awards" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-5 text-center">Awards & Achievements</h2>
                </div>
            </div>
            <div class="row text-center">
                @foreach($awards as $award)
                    @component('components.home_award')
                        @slot('award_name')
                            {{$award->award_name}}
                        @endslot
                        @slot('award_description')
                            {{$award->description}}
                        @endslot
                        @slot('year')
                            {{$award->year}}
                        @endslot
                    @endcomponent
                @endforeach
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="{{ route('resume') }}#awards_achievements" class="btn btn-lg btn-outline-secondary">See full list &rarr;</a>
                </div>
            </div>
        </div>
    </section>
    {{-- End Awards & Achievements --}}

    {{-- Gallery Section --}}
    <section id="home-gallery" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-5 text-center">Gallery</h2>
                </div>
            </div>
            <div class="row mb-5">
                <div class="col-md-4 mb-2">
                    <img src="{{ URL::asset('img/gallery/7.jpg') }}" alt="Image 1" class="img-fluid">
                </div>
                <div class="col-md-4 mb-2">
                    <img src="{{ URL::asset('img/gallery/8.jpg') }}" alt="Image 1" class="img-fluid">
                </div>
                <div class="col-md-4 mb-2">
                    <img src="{{ URL::asset('img/gallery/16.jpg') }}" alt="Image 1" class="img-fluid">
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <a href="{{ route('gallery') }}" class="btn btn-lg btn-outline-secondary">See full gallery &rarr;</a>
                </div>
            </div>
        </div>
    </section>
    {{-- End Gallery --}}
@endsection
