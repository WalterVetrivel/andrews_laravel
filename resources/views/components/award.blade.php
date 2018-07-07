<div class="award mb-3">
    <div class="row">
        <div class="col-md-1">
            <i class="fa fa-trophy rounded-circle p-2 my-2 list-icon"></i>
        </div>
        <div class="col-md-11">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-8">
                    <h4>{{ $award_name }}</h4>
                </div>
                <div class="col-md-4">
                    <p class="text-muted"><i class="fa fa-calendar mr-2"></i>{{ $year }}</p>
                </div>
            </div>
            <h5>
                <i class="fa fa-group mr-2"></i>
                {{ $organization }}
            </h5>
            @if(isset($description))
                <p>{{ $description }}</p>
            @endif
        </div>
    </div>
</div>
