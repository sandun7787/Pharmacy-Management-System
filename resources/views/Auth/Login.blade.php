@extends('Layout.app')

@section('login')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8 col-12 mt-5">
                <div class="card shadow-lg border-0">
                    <div class="card-header text-center bg-primary text-white">
                        <h2 class="text-uppercase font-weight-bold">Login</h2>
                        <span class="text-white" >Don't have an account? <a href="{{ url('register') }}" class="text-white" style="color: white !important;">Register Here</a></span>
                    </div>

                    <div class="card-body">
                        @if(Session::has('error'))
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>{{ Session::get('error') }}</strong>
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                        @endif

                        <form action="{{ url('authenticate') }}" method="POST" autocomplete="off">
                            @csrf

                            <!-- Email -->
                            <div class="form-group">
                                <label for="email">Email Address</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="basic-addon1">@</span>
                                    </div>
                                    <input type="email" class="form-control @error('email') is-invalid @enderror"
                                        placeholder="Email Address" name="email" value="{{ old('email') }}" required>

                                    @error('email')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <!-- Password -->
                            <div class="form-group">
                                <label for="password">Password</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></span>
                                    </div>
                                    <input type="password" class="form-control @error('password') is-invalid @enderror"
                                        placeholder="Password" name="password" required>

                                    @error('password')
                                        <span class="invalid-feedback" role="alert">
                                            <strong>{{ $message }}</strong>
                                        </span>
                                    @enderror
                                </div>
                            </div>

                            <!-- Remember Me -->
                            <div class="form-group">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="remember" name="remember">
                                    <label class="form-check-label" for="remember">Remember Me</label>
                                </div>
                            </div>

                            <!-- Forgot Password Link -->
                            <div class="form-group text-right">
                                <a href="{{ url('password/reset') }}" class="text-muted">Forgot Password?</a>
                            </div>

                            <!-- Login Button -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary btn-block"><i class="fa fa-unlock-alt mr-2"
                                        aria-hidden="true"></i> Login</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
