<div class="col-md-4 p-3 home-award">
    <i class="fa fa-trophy fa-3x"></i>
    <p class="py-3">
        {{$award_name}}
        @if(isset($award_description) && $award_description != null && $award_description != '')
            for the
            {{$award_description}}
        @endif
        - {{$year}}
    </p>
</div>
