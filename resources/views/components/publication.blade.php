<div class="publication">
    <div class="row">
        <div class="col-md-1">
            @if($type == 'international')
                <i class="fa fa-newspaper-o p-2 mb-3 rounded-circle international-icon list-icon"></i>
            @elseif($type == 'national')
                <i class="fa fa-newspaper-o p-2 mb-3 rounded-circle national-icon list-icon"></i>
            @elseif($type == 'book' || $type == 'book_chapter')
                <i class="fa fa-book p-2 mb-3 rounded-circle book-icon list-icon"></i>
            @elseif($type == 'journal')
                <i class="fa fa-newspaper-o p-2 mb-3 rounded-circle journal-icon list-icon"></i>
            @endif
        </div>
        <div class="col-md-11">
            <h4>{{$title}}</h4>
            @if($type == 'international')
                <p class="authors blue-author">
            @elseif($type == 'national')
                <p class="authors orange-author">
            @elseif($type == 'book' || $type == 'book_chapter')
                <p class="authors blue-author">
            @elseif($type == 'journal')
                <p class="authors orange-author">
            @endif
                <i class="fa fa-pencil mr-2"></i>
                {{ $authors }}
            </p>
            <h5 class="text-muted">{{ $description }}</h5>
        </div>
    </div>
</div>
