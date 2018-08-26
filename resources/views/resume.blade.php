@extends('layouts.master')

@section('content')
    {{-- Landing --}}
	<header id="resume-landing" class="py-5">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-12 col-md-8 mt-5 text-center">
                    <h1 class="text-center p-5 mt-5">Professional resume of Prof. Dr. S. Andrews</h1>
                    <hr class="my-5 white">
                    {{-- <a href="#" class="btn btn-lg btn-outline-secondary btn-1-resume mr-2 mb-2">Download PDF version <i class="fa fa-download"></i></a> --}}
                    <a data-scroll href="#work-experience" class="btn btn-lg btn-outline-info btn-1-resume mb-2">View Resume <i class="fa fa-eye"></i></a>
                </div>
            </div>
        </div>
    </header>
    {{-- End Landing --}}

    {{-- Work Experience --}}
    <section id="work-experience" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">Work Experience</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-8">
                    @for($i = 0;$i < count($jobs);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.employment')
                            @slot('job_title')
                                {{$jobs[$i]->job_title}}
                            @endslot
                            @slot('from')
                                {{$jobs[$i]->from}}
                            @endslot
                            @slot('to')
                                {{$jobs[$i]->to}}
                            @endslot
                            @slot('department')
                                {{$jobs[$i]->department}}
                            @endslot
                            @slot('employer')
                                {{$jobs[$i]->employer}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Work Experience --}}

    {{-- Education --}}
    <section id="education" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">Education</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-sm-10 col-md-8">
                    @for($i = 0;$i < count($degrees);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.education')
                            @slot('degree')
                                {{$degrees[$i]->degree}}
                            @endslot
                            @slot('year')
                                {{$degrees[$i]->year}}
                            @endslot
                            @slot('institution')
                                {{$degrees[$i]->institution}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Education --}}

    {{-- Skills & Subjects --}}
    <section id="skills_subjects">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 skills p-5">
                    <h2 class="text-center mb-5">Skills</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Database</h4>
                            <ul class="skills-list">
                                @foreach($database_skills as $skill)
                                    <li><i class="fa fa-check mr-2"></i>{{$skill->skill}}</li>
                                @endforeach
                            </ul>
                            <h4 class="mt-3">Multimedia</h4>
                            <ul class="skills-list mb-3">
                                @foreach($multimedia_skills as $skill)
                                    <li><i class="fa fa-check mr-2"></i>{{$skill->skill}}</li>
                                @endforeach
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <h4>High-level languages</h4>
                            <ul class="skills-list">
                                @foreach($high_level_language_skills as $skill)
                                    <li><i class="fa fa-check mr-2"></i>{{$skill->skill}}</li>
                                @endforeach
                            </ul>
                            <h4 class="mt-3">Tools</h4>
                            <ul class="skills-list">
                                @foreach($tool_skills as $skill)
                                    <li><i class="fa fa-check mr-2"></i>{{$skill->skill}}</li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 subjects p-5">
                    <h2 class="text-center mb-5">Subjects Taught</h2>
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="subjects-list">
                                @for($i = 0;$i < count($subjects_taught) / 2;$i++)
                                    <li>
                                        <i class="fa fa-check mr-2"></i>{{$subjects_taught[$i]->subject_name}}
                                    </li>
                                @endfor
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="subjects-list">
                                @for($i = $i;$i < count($subjects_taught);$i++)
                                    <li>
                                        <i class="fa fa-check mr-2"></i>{{$subjects_taught[$i]->subject_name}}
                                    </li>
                                @endfor
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    {{-- End Skills & Subjects --}}

    {{-- Awards & Achievements --}}
    <section id="awards_achievements" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">Awards & Achievements</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    @for($i = 0;$i < count($awards);$i++)
                        @if($i > 0)
                            <hr class="white">
                        @endif
                        @component('components.award')
                            @slot('award_name')
                                {{$awards[$i]->award_name}}
                            @endslot
                            @slot('year')
                                {{$awards[$i]->year}}
                            @endslot
                            @slot('organization')
                                {{$awards[$i]->awarding_organization}}
                            @endslot
                            @slot('description')
                                {{$awards[$i]->description}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Awards --}}

    {{-- References --}}
    <section id="references" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">These people can vouch for me</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    @for($i = 0;$i < count($references);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.reference')
                            @slot('name')
                                {{$references[$i]->name}}
                            @endslot
                            @slot('position')
                                {{$references[$i]->position}}
                            @endslot
                            @slot('organization')
                                {{$references[$i]->organization}}
                            @endslot
                            @slot('phone')
                                {{$references[$i]->phone}}
                            @endslot
                            @slot('email')
                                {{$references[$i]->email}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End References --}}
@endsection
