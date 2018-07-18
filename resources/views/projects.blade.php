@extends('layouts.master')

@section('content')
    {{-- Landing --}}
    <header id="projects-landing" class="py-5">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-12 col-md-8 mt-5 text-center">
                    <h1 class="text-center p-5 mt-5">Welcome to my project portfolio</h1>
                    <hr class="my-5 white">
                    <a data-scroll href="#projects-list" class="btn btn-outline-secondary btn-lg btn-projects">
                        See project list
                        <i class="fa fa-angle-double-down"></i>
                    </a>
                </div>
            </div>
        </div>
    </header>
    {{-- End Landing --}}

    {{-- Projects --}}
    <section id="projects-list" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-5 text-center">Projects I've worked on</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    @for($i = 0;$i < count($projects);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.project')
                            @slot('project')
                                {{$projects[$i]->project_title}}
                            @endslot
                            @slot('location')
                                {{$projects[$i]->location}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Projects --}}
@endsection
