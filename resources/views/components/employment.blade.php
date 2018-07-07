<div class="employment mb-3">
    <div class="row">
        <div class="col-md-1">
            <i class="fa fa-briefcase rounded-circle p-2 my-2 list-icon"></i>
        </div>
        <div class="col-md-11">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-8">
                    <h4>{{ $job_title }}</h4>
                </div>
                <div class="col-md-4">
                    <p class="text-muted"><i class="fa fa-calendar mr-2"></i>{{ $from }} - {{ $to }}</p>
                </div>
            </div>
            <p>{{ $department }}</p>
            <h5>
                <i class="fa fa-building mr-2"></i>
                {{ $employer }}
            </h5>
        </div>
    </div>
</div>
