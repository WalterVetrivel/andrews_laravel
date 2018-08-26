<footer id="footer" class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h2 class="text-center mb-5">How to reach me</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <h4 class="mb-3">Phone</h4>
                <ul>
                    <li><i class="fa fa-phone mr-2"></i>{{$contacts[0]->phone}}</li>
                    <li><i class="fa fa-fax mr-2"></i>{{$contacts[0]->fax}}</li>
                    <li><i class="fa fa-mobile mr-2"></i>{{$contacts[0]->mobile}}</li>
                </ul>
                <hr class="yellow d-md-none">
                <h4 class="my-3">Email</h4>
                <ul>
                    <li><i class="fa fa-envelope mr-2"></i>{{$contacts[0]->email}}</li>
                </ul>
                <hr class="yellow d-md-none">
            </div>
            <div class="col-md-6">
                <h4 class="mb-3">Address</h4>
                <ul>
                    <li><i class="fa fa-building mr-2"></i>{{$contacts[0]->work_address}}</li>
                    <li><i class="fa fa-home mr-2"></i>{{$contacts[0]->home_address}}</li>
                </ul>
            </div>
        </div>
        <hr class="white">
        <div class="row">
            <div class="col-12">
                <p class="text-center mb-0">Copyright &copy; Prof. Dr. S. Andrews {{ date('Y') }}. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>
