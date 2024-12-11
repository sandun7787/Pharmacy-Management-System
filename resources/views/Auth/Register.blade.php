@extends('Layout.app')

@section('register')
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-lg-6 col-md-8 col-12">
                <div class="card shadow-lg border-0 rounded-lg">
                    <div class="card-header bg-primary text-white text-center">
                        <h2 class="font-weight-bold">Registration</h2>
                        <p>Already have an account? <a href="{{ url('login') }}" class="text-white font-weight-bold">Login Here</a></p>
                    </div>

                    <div class="card-body p-5">
                        <form action="{{ url('store') }}" method="POST">
                            @csrf
                            <div class="form-row">
                                <div class="col-md-6 mb-4">
                                    <label for="name" class="font-weight-bold">Full Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control @error('name') is-invalid @enderror" 
                                           placeholder="Ex: Jhone Philips" name="name" value="{{ old('name') }}">
                                    @error('name')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-4">
                                    <label for="email" class="font-weight-bold">Email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control @error('email') is-invalid @enderror" 
                                           placeholder="Ex: you@gmail.com" name="email" value="{{ old('email') }}">
                                    @error('email')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6 mb-4">
                                    <label for="dob" class="font-weight-bold">Date of Birth <span class="text-danger">*</span></label>
                                    <input type="date" class="form-control @error('dob') is-invalid @enderror" 
                                           name="dob" value="{{ old('dob') }}">
                                    @error('dob')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-4">
                                    <label for="mobile" class="font-weight-bold">Mobile No</label>
                                    <input type="text" class="form-control" placeholder="Ex: 0717865900" name="mobile" 
                                           value="{{ old('mobile') }}">
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-md-6 mb-4">
                                    <label for="password" class="font-weight-bold">Password <span class="text-danger">*</span></label>
                                    <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" 
                                           placeholder="Password">
                                    @error('password')
                                        <div class="invalid-feedback">{{ $message }}</div>
                                    @enderror
                                </div>

                                <div class="col-md-6 mb-4">
                                    <label for="password_confirmation" class="font-weight-bold">Confirm Password <span class="text-danger">*</span></label>
                                    <input type="password" class="form-control" name="password_confirmation" placeholder="Confirm Password">
                                </div>
                            </div>

                            <div class="form-group mb-4">
                                <label for="address" class="font-weight-bold">Address</label>
                                <textarea class="form-control @error('address') is-invalid @enderror" id="address" rows="3" name="address" 
                                          placeholder="Ex: 33/5 Kandy">{{ old('address') }}</textarea>
                                @error('address')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                            </div>

                            <div class="form-check mb-4">
                                <input type="checkbox" class="form-check-input" id="termsCheck">
                                <label class="form-check-label" for="termsCheck">I agree to the terms and conditions</label>
                            </div>

                            <div class="d-flex justify-content-between">
                                <button type="reset" class="btn btn-secondary">Reset</button>
                                <button type="submit" class="btn btn-success"><i class="fa fa-user-plus mr-1" aria-hidden="true"></i> Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
