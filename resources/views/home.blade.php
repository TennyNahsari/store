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
                          <a class="nav-link" href="#">Transaksi</a>
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

                   <div class=" ">

                   <table class="table"> 
                      <tr>
                         <th>ID Member</th>
                         <th>Nama</th>
                         <th>Email</th>
                         <th>Alamat</th>
                         <th>Point</th>
                      </tr>

                      @foreach ($users as $user)
                    
                        <tr>
                          <td>{{$user->id}}</td>
                          <td>{{$user->name}}</td>
                          <td>{{$user->email}}</td>
                          <td>{{$user->alamat}}</td>
                          <td>{{$user->point}}</td>
                        </tr>
                   
                      @endforeach

                   </table>

                   <div class="text-right">
                      <button type="button" name="tambah_member" id="tambah_member" class="btn btn-success btn-sm">Tambah Member</button>
                      <button type="button" name="edit_member" id="edit_member" class="btn btn-success btn-sm">Edit Member</button>
                      <button type="button" name="hapus_member" id="hapus_member" class="btn btn-success btn-sm">Hapus Member</button>
                   </div>
                   <br />
         
                   </div>              

                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<div id="formModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
     <div class="modal-content">
      <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal">&times;</button>
             <h4 class="modal-title">Tambah Member</h4>
           </div>
           <div class="modal-body">
            <span id="form_result"></span>
            <form method="post" id="sample_form" class="form-horizontal" enctype="multipart/form-data">
                @csrf
            <div class="form-group">
                    <label class="control-label col-md-4" >ID Member: </label>
                    <div class="col-md-8">
                     <input type="text" name="idmember" id="idmember" class="form-control" />
                    </div>
            </div>
            <div class="form-group">
               <label class="control-label col-md-4" >Nama : </label>
               <div class="col-md-8">
                <input type="text" name="nama" id="nama" class="form-control" />
               </div>
              </div>
              <div class="form-group">
               <label class="control-label col-md-4">Email : </label>
               <div class="col-md-8">
                <input type="email" name="email" id="email" class="form-control" />
               </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-4">Password : </label>
                <div class="col-md-8">
                 <input type="password" name="pwd" id="pwd" class="form-control" />
                </div>

                <div class="form-group">
                    <label class="control-label col-md-4">Alamat : </label>
                    <div class="col-md-8">
                     <input type="text" name="alamat" id="alamat" class="form-control" />
                    </div>
               </div>

               <div class="form-group">
                <label class="control-label col-md-4">Point : </label>
                <div class="col-md-8">
                 <input type="text" name="point" id="point" class="form-control" />
                </div>
                </div>
            
              <br />
              <div class="form-group" class="text-center">
               <input type="hidden" name="action" id="action" />
               <input type="submit" name="action_button" id="action_button" class="btn btn-warning" value="Add" />
              </div>
            </form>
           </div>
        </div>
       </div>
   </div>

   
<script>

$('#tambah_member').click(function(){
  $('.modal-title').text("Tambah Member");
     $('#action_button').val("Add Member");
     $('#action').val("AddMember");
     $('#formModal').modal('show');
 });

 $('#edit_member').click(function(){
  $('.modal-title').text("Edit Member");
     $('#action_button').val("Edit Member");
     $('#action').val("EditMember");
     $('#formModal').modal('show');
 });

 $('#hapus_member').click(function(){
  $('.modal-title').text("Hapus Member");
     $('#action_button').val("Hapus Member");
     $('#action').val("HapusMember");
     $('#formModal').modal('show');
 });

 $('#sample_form').submit(function(event){
  
   event.preventDefault();
   if($('#action').val() == 'AddMember'){
   $.ajax({
    url:"{{url('/home/tambah')}}",
    method:"POST",
    data: $('#sample_form').serialize(),
    dataType:"json",
    success:function(data)
    {
        if(data.success){
            $('#form_result').html(data.success);
        }
    }

   })
  }

  if($('#action').val() == 'EditMember'){
   $.ajax({
    url:"{{url('/home/edit')}}",
    method:"POST",
    data: $('#sample_form').serialize(),
    dataType:"json",
    success:function(data)
    {
        if(data.success){
            $('#form_result').html(data.success);
        }
    }

   })
  }

  if($('#action').val() == 'HapusMember'){
   $.ajax({
    url:"{{url('/home/hapus')}}",
    method:"POST",
    data: $('#sample_form').serialize(),
    dataType:"json",
    success:function(data)
    {
        if(data.success){
            $('#form_result').html(data.success);
        }
    }

   })
  }
  
})

$('#sample_formc').submit(function(event){
  
  event.preventDefault();
  $.ajax({
   url:"{{url('/home/hapus')}}",
   method:"POST",
   data: $('#sample_formc').serialize(),
   dataType:"json",
   success:function(data)
   {
       if(data.success){
           $('#form_resultc').html(data.success);
       }
   }

  })
 
})

</script>


