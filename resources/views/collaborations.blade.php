@extends('layouts.master')
@section('content')
{{-- Landing --}}
<header id="collaborations-landing" class="py-5">
    <div class="container">
        <div class="row justify-content-center align-items-center">
            <div class="col-12 col-md-8 mt-5 text-center">
                <h1 class="text-center p-5 mt-5">My Collaborations & Affiliations</h1>
                <hr class="my-5 white">
                <a data-scroll href="#collaborations" class="btn btn-outline-secondary btn-lg btn-collaborations">
                    See list
                    <i class="fa fa-angle-double-down"></i>
                </a>
            </div>
        </div>
    </div>
</header>
{{-- End Landing --}}

{{-- Collaborations --}}
<section id="collaborations" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">Collaborations</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <ul class="list-unstyled text-justify collaborations-list">
                    @for($i = 0;$i < count($collaborations);$i++)
                        @if($i > 0)
                        <hr>
                        @endif
                        <li><i class="fa fa-handshake-o mr-2"></i>{{ $collaborations[$i]->collaboration }}</li>
                    @endfor
                </ul>
            </div>
        </div>
    </div>
</section>
{{-- End Collaborations --}}

{{-- Affiliations --}}
<section id="affiliations" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="mb-5 text-center">Professional Affiliations</h2>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <ul class="list-unstyled affiliations-list">
                    @for($i = 0;$i < count($affiliations);$i++)
                        <li><i class="fa fa-check mr-2"></i>{{ $affiliations[$i]->affiliation }}</li>
                    @endfor
                </ul>
            </div>
        </div>
    </div>
</section>
{{-- End Affiliations --}}
@endsection
