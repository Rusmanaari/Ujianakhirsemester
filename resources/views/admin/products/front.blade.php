<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- <title>{{ config('app.name', 'Laravel') }}</title> -->
    <title>Roesman Store</title>
    
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <link href="{{ asset('css/all.css') }}" rel="stylesheet">
    <style>
    body{
        background-size: 100%;
        background-image: url('images/hjk.jpg');
    }
    nav{
        background:#FF4500}
    }
    </style>
</head>
<body>
      <nav class="navbar navbar-expand-md navbar-light sticky-top ">
            <div class="container-fluid">
                <a class="navbar-brand" href="{{ url('/') }}">
                Roesman Store
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav ml-auto">
                        <li class="nav-item" style="margin-right:10px">
                                <a class="nav-link   " href="{{ url('/') }}">
                                <i class="fa fa-home"></i> Home</a>
                        </li>
                        @if (Auth::check())
                        <li class="nav-item dropdown" style="margin-right:10px">
                            <a class="nav-link dropdown-toggle    " href="#" id="navbarDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-cube"></i>    Product
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('admin.products.index')
                                }}">List</a>

                                <a class="dropdown-item" href="{{ route('admin.products.create')
                                }}"> Tambah</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown" style="margin-right:10px">
                            <a class="nav-link dropdown-toggle   " href="#" id="navbarDropdown"
                                role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fa fa-exchange-alt"></i> Order
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('admin.orders.index')
                                }}"><i class="fas fa-list"></i> List</a>

                                <a class="dropdown-item" href="{{ route('admin.orders.create')
                                }}"><i class="fas fa-plus"></i> Tambah</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="{{ route('carts.index') }}"><i class="fa fa-shopping-cart"></i> Cart <span class="badge badge-pill badge-danger">
                            @if(session('cart'))
                                {{ count(session('cart')) }}
                            @else
                                0
                            @endif
                            </span></a>
                        </li>
                        @endif
                    </ul>
                    <div class="clearfix"> </div>
                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ml-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a style="margin-right:10px" class="nav-link" href="{{ route('login') }}"><i class="fas fa-sign-in-alt"></i> {{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link " href="{{ route('register') }}"><i class="fas fa-user-plus"></i> {{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle " href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre><i class="fa fa-user"></i>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        <i class="fas fa-sign-out-alt"></i> {{ __('Logout') }}
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

        <main class="py-4">
        <div class="container col-md-8">
	<div class="row justify-content-center">
			<br>
			<h2>List Product</h2>
			<br>
	</div>
			<div class="row justify-content-center">
				@if($message = Session::get('success'))
				<div class="alert alert-success">
					<p>{{ $message }}</p>
				</div>
				@endif
				<div class="col">
					<a href="{{ route('admin.products.create') }}" class="btn btn-primary"><i class="fas fa-plus-circle"></i> Tambah Produk</a>
				</div>
				<div class="col-md-4">
					<div class="form-group">
						<form action="{{route('admin.products.index')}}">
							<select id="sortingBy" name="sortingBy" class="form-control">
								<option hidden>Sort By</option>
								<option value="best_seller">Best Seller</option>
								<option value="terbaik">Terbaik</option>
								<option value="termurah">Termurah</option>
								<option value="termahal">Termahal</option>
								<option value="terbaru">Terbaru</option>
                                <option value="eye">View</option>
							</select>
						</form>
					</div>
				</div>

            @yield('content')
            </div>
	
    </div>
    
        </main>
    </div>
    @include('layouts.script')

</body>
</html>
