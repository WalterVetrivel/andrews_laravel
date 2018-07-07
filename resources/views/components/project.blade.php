<div class="project">
    <div class="row">
        <div class="col-md-1">
            <i class="fa fa-wrench p-2 rounded-circle mb-3 list-icon"></i>
        </div>
        <div class="col-md-11">
            <h4>{{ $project }}</h4>
            @if(isset($location) && $location != null)
                <p class="location"><i class="fa fa-map-marker mr-2"></i>{{ $location }}</p>
            @endif
        </div>
    </div>
</div>
