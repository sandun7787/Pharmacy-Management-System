@extends('user.home')

@section('bar')
    <span class="text-muted float-right">Home / Prescription</span>
@endsection

@section('connect')
    <div class="col-8 mt-3 mx-auto">
        <div class="card shadow-lg">

            <div class="card-header bg-dark text-white">
                <span class="font-weight-bold">Prescription</span>
                <a href="{{url('user-dashboard')}}" class="btn btn-outline-light float-right">Back</a>
            </div>

            <div class="card-body bg-light">
                <form action="precription-store" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <input type="text" class="form-control" value="{{ Auth()->user()->id }}" name="user_id" hidden>
                    </div>

                    <div class="form-group">
                        <label for="note" class="font-weight-bold">Note</label>
                        <input type="text" class="form-control @error('note') is-invalid @enderror" name="note"
                            value="{{ old('note') }}">

                        @error('note')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="address" class="font-weight-bold">Delivery Address</label>
                        <input type="text" class="form-control @error('address') is-invalid @enderror" name="address"
                            value="{{ old('address') }}">

                        @error('address')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>

                    <div class="form-row">
                        <div class="col-6">
                            <div class="form-group">
                                <label for="image1" class="font-weight-bold">Upload Image - 01</label>
                                <input type="file" class="form-control @error('image1') is-invalid @enderror" name="image1">

                                @error('image1')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col-6">
                            <div class="form-group">
                                <label for="image2" class="font-weight-bold">Upload Image - 02</label>
                                <input type="file" class="form-control @error('image2') is-invalid @enderror" name="image2">

                                @error('image2')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col">
                            <div class="form-group">
                                <label for="image3" class="font-weight-bold">Upload Image - 03</label>
                                <input type="file" class="form-control @error('image3') is-invalid @enderror" name="image3">

                                @error('image3')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col">
                            <div class="form-group">
                                <label for="image4" class="font-weight-bold">Upload Image - 04</label>
                                <input type="file" class="form-control @error('image4') is-invalid @enderror" name="image4">

                                @error('image4')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="col">
                            <div class="form-group">
                                <label for="image5" class="font-weight-bold">Upload Image - 05</label>
                                <input type="file" class="form-control @error('image5') is-invalid @enderror" name="image5">

                                @error('image5')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                    </div>

                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-success btn-lg px-5">Submit</button>
                        <button type="reset" class="btn btn-danger btn-lg px-5">Reset</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
