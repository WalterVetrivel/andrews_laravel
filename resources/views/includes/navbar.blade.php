<nav class="navbar navbar-expand-md py-5 navbar-dark sticky-navbar" id="navbar">
    <div class="container">
        <a href="{{ route('home') }}" class="d-md-none navbar-brand"><i class="fa fa-home"></i></a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navLinks">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navLinks">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item {{ Request::is('/') ? 'active' : '' }}">
                    <a href="{{ route('home') }}" class="nav-link">Home</a>
                </li>
                <li class="nav-item {{ Request::is('resume') ? 'active' : '' }}">
                    <a href="{{ route('resume') }}" class="nav-link">My Resume</a>
                </li>
                <li class="nav-item {{ Request::is('research') ? 'active' : '' }}">
                    <a href="{{ route('research') }}" class="nav-link">My Research</a>
                </li>
                <li class="nav-item {{ Request::is('projects') ? 'active' : '' }}">
                    <a href="{{ route('projects') }}" class="nav-link">My Projects</a>
                </li>
                <li class="nav-item {{ Request::is('publications') ? 'active' : '' }}">
                    <a href="{{ route('publications') }}" class="nav-link">My Publications</a>
                </li>
                <li class="nav-item {{ Request::is('collaborations') ? 'active' : '' }}">
                    <a href="{{ route('collaborations') }}" class="nav-link">Collaborations & Affiliations</a>
                </li>
                <li class="nav-item {{ Request::is('gallery') ? 'active' : '' }}">
                    <a href="{{ route('gallery') }}" class="nav-link">Gallery</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
