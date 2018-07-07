<div class="supervision">
    <div class="row">
        <div class="col-md-1">
            @if($completed == 'completed')
                <i class="fa fa-graduation-cap p-2 mb-3 completed-icon rounded-circle list-icon"></i>
            @else
                <i class="fa fa-graduation-cap p-2 mb-3 undergoing-icon rounded-circle list-icon"></i>
            @endif
        </div>
        <div class="col-md-11">
            <h4>{{ $student }}, <small>{{ $degree }}</small></h4>
            @if($completed == 'completed')
                <p class="completed-text">
                    <i class="fa fa-university mr-2"></i>
                    {{ $institution }}
                </p>
            @else
                <p class="undergoing-text">
                    <i class="fa fa-university mr-2"></i>
                    {{ $institution }}
                </p>
            @endif
            <h5 class="text-muted">{{ $description }}</h5>
        </div>
    </div>
</div>
