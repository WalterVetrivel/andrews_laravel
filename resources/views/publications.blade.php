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
            @for($i = 0;$i < 60; $i++)
                <div class="col-md-6">
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            international
                        @endslot
                        @slot('title')
                        Single Trial Source Separation of VEP Signals Using Selective Principal Components
                        @endslot
                        @slot('authors')
                        S.Andrews, Ramaswamy Palaniappan and Vijanth S.Asirvadam
                        @endslot
                        @slot('description')
                        Proc. IEE MEDSIP2004, International Conference on Advances in Medical signal Processing, Malta G.C, EU, ISBN: 0-86431-439-7, pp. 51-57, 5-8 September 2004
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
            @for($i = 0;$i < 2; $i++)
                <div class="col-md-6">
                    @component('components.publication')
                        @slot('type')
                            national
                        @endslot
                        @slot('title')
                        Single Trial Source Separation of VEP Signals Using Selective Principal Components
                        @endslot
                        @slot('authors')
                        S.Andrews, Ramaswamy Palaniappan and Vijanth S.Asirvadam
                        @endslot
                        @slot('description')
                        Proc. IEE MEDSIP2004, International Conference on Advances in Medical signal Processing, Malta G.C, EU, ISBN: 0-86431-439-7, pp. 51-57, 5-8 September 2004
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
                @component('components.publication')
                    @slot('type')
                        book
                    @endslot
                    @slot('title')
                        Problem Solving and Python Programming
                    @endslot
                    @slot('authors')
                        S.Andrews & M.Sivasnakari
                    @endslot
                    @slot('description')
                        2017 Thakur Publications., ISBN: 978-93- 87093-22-5
                    @endslot
                @endcomponent
            </div>
            <div class="col-md-6">
                <h3 class="mb-5 text-center">Book chapters</h3>
                @component('components.publication')
                    @slot('type')
                        book
                    @endslot
                    @slot('title')
                        Problem Solving and Python Programming
                    @endslot
                    @slot('authors')
                        S.Andrews & M.Sivasnakari
                    @endslot
                    @slot('description')
                        2017 Thakur Publications., ISBN: 978-93- 87093-22-5
                    @endslot
                @endcomponent
                <hr class="white">
                @component('components.publication')
                    @slot('type')
                        book
                    @endslot
                    @slot('title')
                        Problem Solving and Python Programming
                    @endslot
                    @slot('authors')
                        S.Andrews & M.Sivasnakari
                    @endslot
                    @slot('description')
                        2017 Thakur Publications., ISBN: 978-93- 87093-22-5
                    @endslot
                @endcomponent
                <hr class="white">
                @component('components.publication')
                    @slot('type')
                        book
                    @endslot
                    @slot('title')
                        Problem Solving and Python Programming
                    @endslot
                    @slot('authors')
                        S.Andrews & M.Sivasnakari
                    @endslot
                    @slot('description')
                        2017 Thakur Publications., ISBN: 978-93- 87093-22-5
                    @endslot
                @endcomponent
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
            @for($i = 0;$i < 28; $i++)
                <div class="col-md-6">
                    @if($i > 1)
                    <hr>
                    @endif
                    @component('components.publication')
                        @slot('type')
                            journal
                        @endslot
                        @slot('title')
                            Appropriate Normalisation For Selective Eigen Rate Method In Separating Principal Components of VEP and EEG In BCI
                        @endslot
                        @slot('authors')
                            S.Andrews, Nidal Kamel, David C.L Ngo and Ramaswamy Palaniappan
                        @endslot
                        @slot('description')
                            Multimedia Cyber Scape online International Journal, 1-6, Vol 3, Number 4, 2005, ISSN No: 1675-9281, Multimedia University Pub
                        @endslot
                    @endcomponent
                </div>
            @endfor
        </div>
    </div>
</section>
{{-- End Refereed Journals --}}
@endsection
