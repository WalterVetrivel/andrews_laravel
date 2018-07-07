<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="https://bootswatch.com/4/cosmo/bootstrap.min.css">
    <link rel="stylesheet" href="{{ URL::asset('css/style.css') }}">
    <title>Prof. Dr. S. Andrews</title>
</head>
<body>
    @include('includes.navbar')
    @yield('content')
    @include('includes.footer')
    <!-- Scripts -->
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/popper.js@1.14.3/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@14/dist/smooth-scroll.polyfills.min.js"></script>
        <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
        <script src="{{ URL::asset('js/main.js') }}"></script>
    <!-- End Scripts -->
</body>
</html>