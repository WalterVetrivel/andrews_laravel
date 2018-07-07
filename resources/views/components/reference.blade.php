<div class="reference mb-3">
    <div class="row">
        <div class="col-md-1">
            <i class="fa fa-user rounded-circle p-2 mb-3 list-icon"></i>
        </div>
        <div class="col-md-11">
            <h4>{{ $name }}</h4>
            <p class="position">{{ $position }}</p>
            <h5>
                <i class="fa fa-building mr-2"></i>
                {{ $organization }}
            </h5>
            <div class="d-flex flex-wrap mt-3">
                <p class="mr-3 text-muted">
                    <i class="fa fa-phone mr-2"></i>{{ $phone }}
                </p>
                <p class="text-muted">
                    <i class="fa fa-envelope mr-2"></i>{{ $email }}
                </p>
            </div>
        </div>
    </div>
</div>
