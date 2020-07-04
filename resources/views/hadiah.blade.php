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

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div ><br><br>
            
            <h3>Nama : {{$user->name}}</h3>    
            <h3>Jumlah Poin : {{$user->point}}</h3>
            <br>
            <div id="tabelitem">  
            
                       <table class="table" id="tabeldata"> 
                          <tr>
                             <th>ID Item</th>
                             <th>Nama Item</th>
                             <th>Harga</th>
                             <th>Point</th>
                          </tr>
    
                          @foreach ($items as $item)
                        
                            <tr>
                              <td>{{$item->id}}</td>
                              <td>{{$item->name}}</td>
                              <td>{{$item->harga}}</td>
                              <td>{{$item->point}}</td>
                            </tr>
    
                          @endforeach
    
                       </table> 

                     </div>
                   
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>



