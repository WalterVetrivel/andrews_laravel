@extends('layouts.master')

@section('content')
    {{-- Landing --}}
	<header id="research-landing" class="py-5">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-12 col-md-8 mt-5 text-center">
                    <h1 class="text-center p-5 mt-5">Research I've been involved in</h1>
                    <hr class="my-5 white">
                    <a data-scroll href="#core-research" class="btn btn-lg btn-outline-info mr-2 mb-2 btn-research">Check out my research <i class="fa fa-angle-double-down"></i></a>
                    <a data-scroll href="#research-funding" class="btn btn-lg btn-outline-info mr-2 mb-2">Funding I've received <i class="fa fa-money"></i></a>
                </div>
            </div>
        </div>
    </header>
    {{-- End Landing --}}

    {{-- Core Research --}}
    <section id="core-research" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-5 text-center">Core research</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <h3 class="mb-5 text-center">Current research</h3>
                    <ul class="current-research mb-5">
                        @foreach($curr_research as $research_area)
                            <li><i class="fa fa-search mr-2"></i>{{$research_area->research_area}}</li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-md-8">
                    <h3 class="mb-5 text-center">Previous research</h3>
                    @for($i = 0;$i < count($prev_research);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.research')
                            @slot('research_title')
                                {{$prev_research[$i]->research_title}}
                            @endslot
                            @slot('research_subtext')
                                {{$prev_research[$i]->research_subtext}}
                            @endslot
                            @slot('description')
                                {{$prev_research[$i]->description}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Core Research --}}

    {{-- Postgraduate Supervision --}}
    <section id="supervision" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="text-center mb-5">Postgraduate Supervision</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-5">
                    <h3 class="text-center mb-5">Undergoing</h3>
                    @for($i = 0;$i < count($undergoing_supervision);$i++)
                        @if($i > 0)
                            <hr class="white">
                        @endif
                        @component('components.supervision')
                            @slot('completed')
                                undergoing
                            @endslot
                            @slot('student')
                                {{$undergoing_supervision[$i]->student_name}}
                            @endslot
                            @slot('degree')
                                {{$undergoing_supervision[$i]->degree}}
                            @endslot
                            @slot('institution')
                                {{$undergoing_supervision[$i]->institution}}
                            @endslot
                            @slot('description')
                                {{$undergoing_supervision[$i]->description}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
                <div class="col-md-6">
                    <h3 class="text-center mb-5">Completed</h3>
                    @for($i = 0;$i < count($completed_supervision);$i++)
                        @if($i > 0)
                            <hr class="white">
                        @endif
                        @component('components.supervision')
                            @slot('completed')
                                completed
                            @endslot
                            @slot('student')
                                {{$completed_supervision[$i]->student_name}}
                            @endslot
                            @slot('degree')
                                {{$completed_supervision[$i]->degree}}
                            @endslot
                            @slot('institution')
                                {{$completed_supervision[$i]->institution}}
                            @endslot
                            @slot('description')
                                {{$completed_supervision[$i]->description}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Postgraduate Supervision --}}

    {{-- Research Funding --}}
    <section id="research-funding" class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h2 class="mb-5 text-center">Research funding</h2>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-8">
                    @for($i = 0;$i < count($research_funds);$i++)
                        @if($i > 0)
                            <hr>
                        @endif
                        @component('components.research-fund')
                            @slot('amount')
                                {{$research_funds[$i]->amount}}
                            @endslot
                            @slot('granting_agency')
                                {{$research_funds[$i]->granting_agency}}
                            @endslot
                            @slot('description')
                                {{$research_funds[$i]->description}}
                            @endslot
                        @endcomponent
                    @endfor
                </div>
            </div>
        </div>
    </section>
    {{-- End Research Funding --}}
@endsection
