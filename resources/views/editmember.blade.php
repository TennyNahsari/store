<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">
                       <li class="nav-item active">
                          <a class="nav-link" href="{{url('/home')}}">User <span class="sr-only">(current)</span></a>
                       </li>
                       <li class="nav-item">
                          <a class="nav-link" href="{{url('/item')}}">Item</a>
                       </li>
                       <li class="nav-item">
                          <a class="nav-link" href="{{url('/transaksi')}}">Transaksi</a>
                       </li>
                       <li class="nav-item">
                          <a class="nav-link" href="#">Hadiah</a>
                       </li>
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

    </div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('List of Members') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    <form method="post" id="sample_form" action="{{ action('HomeController@edit') }}" class="form-horizontal" enctype="multipart/form-data">
                        @csrf
                    <div class="form-group">
                            <label class="control-label col-md-4" >ID Member : {{$customer->id}} </label>
                            <input type="hidden" name="idmember" id="idmember" value="{{$customer->id}}" class="form-control" />
                    </div>
                    <div class="form-group">
                       <label class="control-label col-md-4" >Nama : </label>
                       <div class="col-md-8">
                        <input type="text" name="nama" id="nama" value="{{$customer->name}}" class="form-control" />
                       </div>
                      </div>
                      <div class="form-group">
                       <label class="control-label col-md-4">Email : </label>
                       <div class="col-md-8">
                        <input type="email" name="email" id="email" value="{{$customer->email}}" class="form-control" />
                       </div>
                      </div>
        
                      <div class="form-group">
                            <label class="control-label col-md-4">Alamat : </label>
                            <div class="col-md-8">
                             <input type="text" name="alamat" id="alamat" value="{{$customer->alamat}}" class="form-control" />
                            </div>
                       </div>
        
                       <div class="form-group">
                        <label class="control-label col-md-4">Point : </label>
                        <div class="col-md-8">
                         <input type="text" name="point" id="point" value="{{$customer->point}}" class="form-control" />
                        </div>
                        </div>
                    
                      <br />
                      <div class="form-group" class="text-center">
                       <input type="hidden" name="action" id="action" />
                       <input type="submit" name="action_button" id="action_button" class="btn btn-warning btn-sm" value="Edit" />
                       <a href="{{url('/home')}}" class="btn btn-warning btn-sm">Back</a>
                      </div>
                    </form>  
               
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>



